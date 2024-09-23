import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yet_another_state_holder/yet_another_state_holder.dart';

import 'state.dart';

typedef ModSpec<Item extends Object, Mod extends Object> = ({
  Item? Function(Mod mod, Item item, GetItem<Item> getItem) modifyItem,
  List<Item> Function(Mod mod, GetItem<Item> getItem) newModItems,
});

typedef GetItem<Item extends Object> = T? Function<T extends Item>(String id);

typedef IncomingFinalizer<Item extends Object> = Item Function(
    {required Item cacheItem, required Map<String, Item> incomings});

typedef OutgoingFinalizer<Item extends Object> = Item Function(
    {required Item outgoingItem, required Map<String, Item> cache});

class LiveCache<Item extends Object, Mod extends Object>
    extends StateHolder<CacheState<Item, Mod>> {
  final String Function(Item e) itemId;
  final ModSpec<Item, Mod> modSpec;
  final IncomingFinalizer<Item> incomingFinalizer;
  final OutgoingFinalizer<Item> outgoingFinalizer;

  LiveCache({
    required this.itemId,
    required this.modSpec,
    required this.incomingFinalizer,
    required this.outgoingFinalizer,
  }) : super(CacheState());

  void overwrite(Map<String, Item> cache) {
    state = state.copyWith(cache: cache);
  }

  Stream<List<T>> addAndObserveMany<T extends Item>(
      Future<List<T>> Function() fetchItems) async* {
    final List<Mod> missedMods = [];
    final sub = _modsStream.listen((e) => missedMods.add(e));
    List<T> res = await fetchItems();
    sub.cancel();
    res = modSpec
        .applyMods(items: res, mods: missedMods, getItem: getItem)
        .whereType<T>()
        .toList();
    final resMap = {for (final e in res) itemId(e): e};
    state = state.copyWith(
      cache: {
        ...state.cache,
        for (final e in res) itemId(e): e,
      }.map(
        (key, e) => MapEntry(
          key,
          incomingFinalizer(cacheItem: e, incomings: resMap),
        ),
      ),
    );
    yield* startedStream
        .map((e) => res.map((e) => state.cache[itemId(e)]).nonNulls.toList())
        .map((e) => modSpec.applyMods(
            items: e, mods: state.ephemeralMods, getItem: getItem))
        .map((e) => e
            .map((e) => outgoingFinalizer(outgoingItem: e, cache: state.cache))
            .toList())
        .map((e) => e.whereType<T>().toList())
        .distinct(const ListEquality().equals);
  }

  Stream<T?> addAndObserveOne<T extends Item>(
      Future<T?> Function() fetchItem) async* {
    yield* addAndObserveMany<T>(
      () async {
        final res = await fetchItem();
        return res == null ? [] : [res];
      },
    ).map((e) => e.isEmpty ? null : e.first).distinct();
  }

  Stream<Mod> get _modsStream =>
      stream.map((e) => e.lastMod).distinct().whereNotNull();

  T? getItem<T extends Item>(String id) {
    final item = state.cache[id];
    return item == null
        ? null
        : outgoingFinalizer(outgoingItem: item, cache: state.cache) as T;
  }

  List<T> getAllItemsOfType<T extends Item>() {
    return state.cache.values
        .map((e) => outgoingFinalizer(outgoingItem: e, cache: state.cache))
        .whereType<T>()
        .toList();
  }

  void modify(Mod mod) {
    state = state.copyWith(cache: {
      for (final e in modSpec.applyMod(
          items: state.cache.values, mod: mod, getItem: getItem))
        itemId(e): e,
    });
  }

  void addEphemeralMod(Mod mod) {
    state =
        state.copyWith(ephemeralMods: state.ephemeralMods.toList()..add(mod));
  }

  void removeEphemeralMod(Mod mod) {
    state = state.copyWith(
        ephemeralMods: state.ephemeralMods.toList()..remove(mod));
  }
}

extension<Item extends Object, Mod extends Object> on ModSpec<Item, Mod> {
  Iterable<Item> applyMod({
    required Mod mod,
    required Iterable<Item> items,
    required GetItem<Item> getItem,
  }) {
    return [
      ...items.map((e) => this.modifyItem(mod, e, getItem)).nonNulls,
      ...this.newModItems(mod, getItem),
    ];
  }

  Iterable<Item> applyMods({
    required List<Mod> mods,
    required Iterable<Item> items,
    required GetItem<Item> getItem,
  }) {
    return mods.fold(
        items, (prev, e) => applyMod(items: prev, mod: e, getItem: getItem));
  }
}
