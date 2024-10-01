import 'package:meta/meta.dart';

@immutable
class CacheState<Item extends Object, Mod extends Object> {
  final Map<String, Item> rawCache;
  final Mod? lastMod;
  final List<Mod> ephemeralMods;

  const CacheState(
      {this.rawCache = const {}, this.lastMod, this.ephemeralMods = const []});

  CacheState<Item, Mod> copyWith({
    Map<String, Item>? rawCache,
    Mod? lastMod,
    List<Mod>? ephemeralMods,
  }) =>
      CacheState(
        rawCache: rawCache ?? this.rawCache,
        lastMod: lastMod ?? this.lastMod,
        ephemeralMods: ephemeralMods ?? this.ephemeralMods,
      );
}
