// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CacheState<Item, Mod> {
  Map<String, Item> get cache => throw _privateConstructorUsedError;
  Mod? get lastMod => throw _privateConstructorUsedError;
  List<Mod> get ephemeralMods => throw _privateConstructorUsedError;

  /// Create a copy of CacheState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CacheStateCopyWith<Item, Mod, CacheState<Item, Mod>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheStateCopyWith<Item, Mod, $Res> {
  factory $CacheStateCopyWith(CacheState<Item, Mod> value,
          $Res Function(CacheState<Item, Mod>) then) =
      _$CacheStateCopyWithImpl<Item, Mod, $Res, CacheState<Item, Mod>>;
  @useResult
  $Res call({Map<String, Item> cache, Mod? lastMod, List<Mod> ephemeralMods});
}

/// @nodoc
class _$CacheStateCopyWithImpl<Item, Mod, $Res,
        $Val extends CacheState<Item, Mod>>
    implements $CacheStateCopyWith<Item, Mod, $Res> {
  _$CacheStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CacheState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
    Object? lastMod = freezed,
    Object? ephemeralMods = null,
  }) {
    return _then(_value.copyWith(
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Item>,
      lastMod: freezed == lastMod
          ? _value.lastMod
          : lastMod // ignore: cast_nullable_to_non_nullable
              as Mod?,
      ephemeralMods: null == ephemeralMods
          ? _value.ephemeralMods
          : ephemeralMods // ignore: cast_nullable_to_non_nullable
              as List<Mod>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CacheStateImplCopyWith<Item, Mod, $Res>
    implements $CacheStateCopyWith<Item, Mod, $Res> {
  factory _$$CacheStateImplCopyWith(_$CacheStateImpl<Item, Mod> value,
          $Res Function(_$CacheStateImpl<Item, Mod>) then) =
      __$$CacheStateImplCopyWithImpl<Item, Mod, $Res>;
  @override
  @useResult
  $Res call({Map<String, Item> cache, Mod? lastMod, List<Mod> ephemeralMods});
}

/// @nodoc
class __$$CacheStateImplCopyWithImpl<Item, Mod, $Res>
    extends _$CacheStateCopyWithImpl<Item, Mod, $Res,
        _$CacheStateImpl<Item, Mod>>
    implements _$$CacheStateImplCopyWith<Item, Mod, $Res> {
  __$$CacheStateImplCopyWithImpl(_$CacheStateImpl<Item, Mod> _value,
      $Res Function(_$CacheStateImpl<Item, Mod>) _then)
      : super(_value, _then);

  /// Create a copy of CacheState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
    Object? lastMod = freezed,
    Object? ephemeralMods = null,
  }) {
    return _then(_$CacheStateImpl<Item, Mod>(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Item>,
      lastMod: freezed == lastMod
          ? _value.lastMod
          : lastMod // ignore: cast_nullable_to_non_nullable
              as Mod?,
      ephemeralMods: null == ephemeralMods
          ? _value._ephemeralMods
          : ephemeralMods // ignore: cast_nullable_to_non_nullable
              as List<Mod>,
    ));
  }
}

/// @nodoc

class _$CacheStateImpl<Item, Mod> implements _CacheState<Item, Mod> {
  const _$CacheStateImpl(
      {final Map<String, Item> cache = const {},
      this.lastMod,
      final List<Mod> ephemeralMods = const []})
      : _cache = cache,
        _ephemeralMods = ephemeralMods;

  final Map<String, Item> _cache;
  @override
  @JsonKey()
  Map<String, Item> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  final Mod? lastMod;
  final List<Mod> _ephemeralMods;
  @override
  @JsonKey()
  List<Mod> get ephemeralMods {
    if (_ephemeralMods is EqualUnmodifiableListView) return _ephemeralMods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ephemeralMods);
  }

  @override
  String toString() {
    return 'CacheState<$Item, $Mod>(cache: $cache, lastMod: $lastMod, ephemeralMods: $ephemeralMods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheStateImpl<Item, Mod> &&
            const DeepCollectionEquality().equals(other._cache, _cache) &&
            const DeepCollectionEquality().equals(other.lastMod, lastMod) &&
            const DeepCollectionEquality()
                .equals(other._ephemeralMods, _ephemeralMods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cache),
      const DeepCollectionEquality().hash(lastMod),
      const DeepCollectionEquality().hash(_ephemeralMods));

  /// Create a copy of CacheState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheStateImplCopyWith<Item, Mod, _$CacheStateImpl<Item, Mod>>
      get copyWith => __$$CacheStateImplCopyWithImpl<Item, Mod,
          _$CacheStateImpl<Item, Mod>>(this, _$identity);
}

abstract class _CacheState<Item, Mod> implements CacheState<Item, Mod> {
  const factory _CacheState(
      {final Map<String, Item> cache,
      final Mod? lastMod,
      final List<Mod> ephemeralMods}) = _$CacheStateImpl<Item, Mod>;

  @override
  Map<String, Item> get cache;
  @override
  Mod? get lastMod;
  @override
  List<Mod> get ephemeralMods;

  /// Create a copy of CacheState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheStateImplCopyWith<Item, Mod, _$CacheStateImpl<Item, Mod>>
      get copyWith => throw _privateConstructorUsedError;
}
