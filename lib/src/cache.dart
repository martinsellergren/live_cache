import 'dart:async';

import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

import 'state.dart';

typedef ModConfig<Item extends Object, Mod extends Object> = ({
  Item? Function(
    Item item,
    Mod mod,
    Map<String, Item> cache,
  ) modifyItem,
  List<Item> Function(
    Mod mod,
    Map<String, Item> cache,
  ) newModItems,
});

typedef Finalizer<Item extends Object, Mod extends Object> = ({
  List<Item> Function(
    Item incomingItem,
  ) incoming,
  Item Function(
    Item outgoingItem,
    Map<String, Item> cache,
  ) outgoing,
});

class LiveCache<Item extends Object, Mod extends Object> {
  var _state = CacheState<Item, Mod>();
  final _ctrl = StreamController<CacheState<Item, Mod>>.broadcast();

  final String Function(Item e) itemId;
  final ModConfig<Item, Mod> modConfig;
  final Finalizer<Item, Mod>? finalizer;

  LiveCache({
    required this.itemId,
    required this.modConfig,
    this.finalizer,
  });

  void dispose() {
    _ctrl.close();
  }

  void _emit(CacheState<Item, Mod> state) {
    _state = state;
    _ctrl.add(state);
  }

  /// Without ephemeral mods and finalizer
  Map<String, Item> get rawState => _state.rawCache;

  set rawState(Map<String, Item> cache) =>
      _emit(_state.copyWith(rawCache: cache));

  /// With ephemeral mods and finalizer
  Map<String, Item> get effectiveState => _state.effectiveCache(
      itemId: itemId, modConfig: modConfig, finalizer: finalizer);

  Stream<List<T>> addAndObserveMany<T extends Item>(
      Future<List<T>> Function() fetchItems) async* {
    final List<Mod> missedMods = [];
    final cache0 = _state.rawCache;
    final sub = _modsStream.listen((e) => missedMods.add(e));
    List<T> res = await fetchItems();
    sub.cancel();
    var newCacheItems = res
        .map((e) => finalizer?.incoming(e) ?? [e])
        .expand((e) => e)
        .modifyItemsRetroactively(
          cache0: cache0,
          missedMods: missedMods,
          itemId: itemId,
          modConfig: modConfig,
        );
    _emit(_state.copyWith(
      rawCache: {
        ..._state.rawCache,
        for (final e in newCacheItems) itemId(e): e,
      },
    ));
    yield* _ctrl.stream
        .startWith(_state)
        .map((state) =>
            res.map((e) => effectiveState[itemId(e)]).nonNulls.toList())
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
      _ctrl.stream.map((e) => e.lastMod).distinct().whereNotNull();

  void modify(Mod mod) {
    _emit(_state.copyWith(
      lastMod: mod,
      rawCache: _state.rawCache.withMod(
        itemId: itemId,
        modConfig: modConfig,
        mod: mod,
      ),
    ));
  }

  void addEphemeralMod(Mod mod) {
    _emit(_state.copyWith(
      ephemeralMods: [..._state.ephemeralMods, mod],
    ));
  }

  void removeEphemeralMod(Mod mod) {
    _emit(_state.copyWith(
      ephemeralMods: _state.ephemeralMods.whereNot((e) => e == mod).toList(),
    ));
  }
}

extension<Item extends Object, Mod extends Object> on CacheState<Item, Mod> {
  Map<String, Item> effectiveCache({
    required String Function(Item e) itemId,
    required ModConfig<Item, Mod> modConfig,
    required Finalizer<Item, Mod>? finalizer,
  }) {
    final cache1 = rawCache.withMods(
        itemId: itemId, modConfig: modConfig, mods: ephemeralMods);
    return cache1.map(
      (key, value) => MapEntry(
        key,
        finalizer?.outgoing(value, cache1) ?? value,
      ),
    );
  }
}

extension<Item extends Object> on Map<String, Item> {
  Map<String, Item> withMods<Mod extends Object>({
    required String Function(Item e) itemId,
    required ModConfig<Item, Mod> modConfig,
    required List<Mod> mods,
  }) =>
      mods.fold(
        this,
        (prev, e) => prev.withMod(modConfig: modConfig, itemId: itemId, mod: e),
      );

  Map<String, Item> withMod<Mod extends Object>({
    required ModConfig<Item, Mod> modConfig,
    required String Function(Item e) itemId,
    required Mod mod,
  }) {
    final existing =
        values.map((e) => modConfig.modifyItem(e, mod, this)).nonNulls;
    final nws = modConfig.newModItems(mod, this);
    return {
      for (final e in existing) itemId(e): e,
      for (final e in nws) itemId(e): e,
    };
  }
}

extension<Item extends Object> on Iterable<Item> {
  Iterable<Item> modifyItemsRetroactively<Mod extends Object>({
    required List<Mod> missedMods,
    required Map<String, Item> cache0,
    required String Function(Item e) itemId,
    required ModConfig<Item, Mod> modConfig,
  }) {
    cache0 = {
      ...cache0,
      for (final e in this) itemId(e): e,
    }.withMods(itemId: itemId, modConfig: modConfig, mods: missedMods);
    return map((e) => cache0[itemId(e)]).nonNulls;
  }
}
