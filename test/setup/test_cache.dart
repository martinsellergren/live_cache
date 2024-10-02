import 'package:collection/collection.dart';
import 'package:live_cache/live_cache.dart';
import 'package:live_cache/src/cache.dart';
import 'package:live_cache/src/utils.dart';

import 'test_data.dart';

LiveCache testCache() => LiveCache<Person, Mod>(
      itemId: itemId,
      modConfig: (
        modifyItem: _modifyItem,
        newModItems: _newModItems,
      ),
      finalizer: (
        incoming: _incomingFinalizer,
        outgoing: _outgoingFinalizer,
      ),
    );

String itemId(Person e) => e.id;

Person _modifyItem(Person item, Mod mod, Map<String, Person> cache) {
  return switch (item) {
    Parent() => switch (mod) {
        ChildIsBorn() => item.id != mod.parentId
            ? item
            : item.copyWith(
                children: [
                  ...item.children,
                  Child(id: mod.childId),
                ],
              ),
        ChildMovingOut() => item.id !=
                cache.requireParentOfChild(childId: mod.childId).id
            ? item
            : item.copyWith(
                children:
                    item.children.whereNot((e) => e.id == mod.childId).toList(),
                // parent no longer has the child, sadly.. oh well - makes this example more interesting
              ),
        ChildChangesFavoriteColor() => item,
      },
    Child() => switch (mod) {
        ChildIsBorn() => item,
        ChildMovingOut() => item.id != mod.childId
            ? item
            : item.copyWith(
                hasMovedOut: true,
              ),
        ChildChangesFavoriteColor() => item.id != mod.childId
            ? item
            : item.copyWith(
                favoriteColor: mod.newColor,
              ),
      },
  };
}

List<Person> _newModItems(Mod mod, Map<String, Person> cache) {
  return switch (mod) {
    ChildIsBorn() => [
        Child(id: mod.childId),
      ],
    _ => [],
  };
}

extension on Map<String, Person> {
  Parent requireParentOfChild({required String childId}) {
    return values
        .whereType<Parent>()
        .firstWhere((e) => e.children.map((e) => e.id).contains(childId));
  }
}

List<Person> _incomingFinalizer(Person incomingItem) {
  return [
    incomingItem,
    ...switch (incomingItem) {
      Parent() => incomingItem.children,
      Child() => [],
    },
  ];
}

Person _outgoingFinalizer(Person outgoingItem, Map<String, Person> cache) {
  return switch (outgoingItem) {
    Parent() => outgoingItem.copyWith(
        children: outgoingItem.children
            .map((e) => cache[e.id]?.as<Child>())
            .nonNulls
            .toList(),
      ),
    Child() => outgoingItem,
  };
}
