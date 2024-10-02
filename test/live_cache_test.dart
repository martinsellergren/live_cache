import 'package:live_cache/live_cache.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test/test.dart';

import 'setup/test_cache.dart';
import 'setup/test_data.dart';

void main() {
  late LiveCache cache;
  const child = Child(id: 'child');
  const parent = Parent(id: 'parent', children: [child]);
  const newbornChild = Child(id: 'newborn child');
  setUp(() {
    cache = testCache();
    cache.rawState = Map<String, Person>.fromEntries(
      [parent, child].map((e) => MapEntry(e.id, e)),
    );
  });

  tearDown(() {
    cache.dispose();
  });

  test(
    "When fetching null, then emit null",
    () async {
      expect(
        cache.addAndObserveOne<Person>(() async => null),
        emits(null),
      );
    },
  );

  test(
    "When fetching empty list, then emit empty list",
    () async {
      expect(
        cache.addAndObserveMany<Person>(() async => []),
        emits([]),
      );
    },
  );

  test(
    "When fetching an item, then update the item in the cache and emit updated item",
    () async {
      final stream = cache
          .addAndObserveOne(
              () async => parent.copyWith(isFeelingGoodToday: false))
          .asBroadcastStream();
      final first = await stream.first;
      cache
          .addAndObserveOne(
              () async => parent.copyWith(isFeelingGoodToday: true))
          .listen(null);
      final second = await stream.first;
      expect(
        [first, second],
        equals([
          parent.copyWith(isFeelingGoodToday: false),
          parent.copyWith(isFeelingGoodToday: true),
        ]),
      );
    },
  );

  test(
    "When fetching an item, then update it's unnested items",
    () async {
      final stream = cache
          .addAndObserveOne(() async => child.copyWith(favoriteColor: 'blue'))
          .asBroadcastStream();
      final first = await stream.first;
      cache
          .addAndObserveOne(
            () async => parent
                .copyWith(children: [child.copyWith(favoriteColor: 'red')]),
          )
          .listen(null);
      final second = await stream.first;
      expect(
        [first, second],
        equals([
          child.copyWith(favoriteColor: 'blue'),
          child.copyWith(favoriteColor: 'red'),
        ]),
      );
    },
  );

  test(
    "When fetching an item's nested item, then update the item",
    () async {
      final stream = cache
          .addAndObserveOne(() async => parent
              .copyWith(children: [child.copyWith(favoriteColor: 'blue')]))
          .asBroadcastStream();
      final first = await stream.first;
      cache
          .addAndObserveOne(() async => child.copyWith(favoriteColor: 'red'))
          .listen(null);
      final second = await stream.first;
      expect(
        [first, second],
        equals([
          parent.copyWith(children: [child.copyWith(favoriteColor: 'blue')]),
          parent.copyWith(children: [child.copyWith(favoriteColor: 'red')]),
        ]),
      );
    },
  );

  test(
    "When fetching simultaneously, then emit latest value",
    () async {
      final stream = BehaviorSubject<Person?>()
        ..addStream(cache.addAndObserveOne(
            () async => child.copyWith(favoriteColor: 'blue')));
      final first = await stream.first;
      cache.addAndObserveOne(() async {
        await Future.delayed(const Duration(milliseconds: 25));
        return child.copyWith(favoriteColor: 'orange');
      }).listen(null);
      cache.addAndObserveOne(() async {
        await Future.delayed(const Duration(milliseconds: 15));
        return child.copyWith(favoriteColor: 'pink');
      }).listen(null);
      await Future.delayed(const Duration(milliseconds: 50));
      expect(
        [first, stream.value],
        equals([
          child.copyWith(favoriteColor: 'blue'),
          child.copyWith(favoriteColor: 'orange'),
        ]),
      );
    },
  );

  test(
    "When modifying, then update items",
    () async {
      expect(parent.children.length, equals(1));
      cache.modify(ChildIsBorn(parentId: parent.id, childId: newbornChild.id));
      final parent1 = cache.effectiveState[parent.id] as Parent;
      expect(parent1.children.length, equals(2));
    },
  );

  test(
    "When modifying then insert new items",
    () {
      expect(cache.effectiveState, isNot(contains(newbornChild.id)));
      cache.modify(ChildIsBorn(parentId: parent.id, childId: newbornChild.id));
      expect(cache.effectiveState, contains(newbornChild.id));
    },
  );

  test(
    "When modifying, then emit updated item",
    () async {
      final stream =
          cache.addAndObserveOne(() async => parent).asBroadcastStream();
      final first = await stream.first;
      cache.modify(ChildIsBorn(parentId: parent.id, childId: newbornChild.id));
      final second = await stream.first;
      expect(
        [first, second],
        equals([
          parent,
          parent.copyWith(children: [child, newbornChild]),
        ]),
      );
    },
  );

  test(
    "When modifying during item fetching, then apply modifications retroactively to incoming items",
    () async {
      final stream = cache.addAndObserveOne(() async {
        await Future.delayed(const Duration(milliseconds: 25));
        return parent;
      }).asBroadcastStream()
        ..listen(null);
      await Future(() {}); // so the fetch is started before modifying
      cache.modify(ChildIsBorn(parentId: parent.id, childId: newbornChild.id));
      cache.modify(ChildMovingOut(childId: child.id));
      final first = await stream.first;
      expect(
        first,
        equals(parent.copyWith(children: [newbornChild])),
      );
    },
  );

  test(
    "When adding ephemeral modification, then emit modified state",
    () async {
      final stream =
          cache.addAndObserveOne(() async => parent).asBroadcastStream();
      final first = await stream.first;
      cache.addEphemeralMod(
          ChildIsBorn(parentId: parent.id, childId: newbornChild.id));
      final second = await stream.first;
      expect(
        [first, second],
        equals([
          parent,
          parent.copyWith(children: [child, newbornChild])
        ]),
      );
    },
  );

  test(
    "When adding ephemeral modification, then see effect in effectiveState but not in rawState",
    () {
      final rawState0 = cache.rawState;
      final effectiveState0 = cache.effectiveState;
      cache.addEphemeralMod(
          ChildIsBorn(parentId: parent.id, childId: newbornChild.id));
      expect(cache.rawState, equals(rawState0));
      expect(cache.effectiveState, isNot(equals(effectiveState0)));
    },
  );
}
