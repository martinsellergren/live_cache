import 'dart:async';

import 'package:event_queue/event_queue.dart';
import 'package:live_cache/live_cache.dart';

class OfflineFirstRepo<Item extends Object, Mod extends Object> {
  final _handler = ReadWriteEventQueue();

  final Future<void> Function(Mod mod) onModify;
  final Function(Object e, StackTrace s, Mod mod) onModifyError;
  final LiveCache<Item, Mod> cache;

  OfflineFirstRepo({
    required this.onModify,
    required this.onModifyError,
    required this.cache,
  });

  void dispose() {
    _handler.dispose();
  }

  void addEphemeralMod(Mod mod) => cache.addEphemeralMod(mod);

  void removeEphemeralMod(Mod mod) => cache.removeEphemeralMod(mod);

  Stream<List<T>> getMany<T extends Item>(
    Future<List<T>> Function() fetchItems,
  ) async* {
    yield* cache.addAndObserveMany(() => _handler.read(() => fetchItems()));
  }

  Stream<T?> getOne<T extends Item>(Future<T?> Function() fetchItem) async* {
    yield* cache.addAndObserveOne(() => _handler.read(() => fetchItem()));
  }

  void modify(Mod mod) async {
    final cache0 = cache.state.cache;
    cache.modify(mod);
    try {
      await _handler.write(() => onModify(mod));
    } catch (e, s) {
      _handler.clearWrites();
      cache.overwrite(cache0);
      onModifyError(e, s, mod);
    }
  }

  Future<bool> modifyAsync(Mod mod) async {
    try {
      await _handler.write(() => onModify(mod));
    } catch (e, s) {
      _handler.clearWrites();
      onModifyError(e, s, mod);
      return false;
    }
    cache.modify(mod);
    return true;
  }
}
