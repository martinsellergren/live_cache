import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class CacheState<Item, Mod> with _$CacheState<Item, Mod> {
  const factory CacheState({
    @Default({}) Map<String, Item> cache,
    Mod? lastMod,
    @Default([]) List<Mod> ephemeralMods,
  }) = _CacheState<Item, Mod>;
}
