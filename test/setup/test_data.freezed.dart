// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Person {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, List<Child> children, bool isFeelingGoodToday)
        parent,
    required TResult Function(String id, bool hasMovedOut, String favoriteColor)
        child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Child> children, bool isFeelingGoodToday)?
        parent,
    TResult? Function(String id, bool hasMovedOut, String favoriteColor)? child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Child> children, bool isFeelingGoodToday)?
        parent,
    TResult Function(String id, bool hasMovedOut, String favoriteColor)? child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Parent value) parent,
    required TResult Function(Child value) child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Parent value)? parent,
    TResult? Function(Child value)? child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Parent value)? parent,
    TResult Function(Child value)? child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParentImplCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$ParentImplCopyWith(
          _$ParentImpl value, $Res Function(_$ParentImpl) then) =
      __$$ParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<Child> children, bool isFeelingGoodToday});
}

/// @nodoc
class __$$ParentImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$ParentImpl>
    implements _$$ParentImplCopyWith<$Res> {
  __$$ParentImplCopyWithImpl(
      _$ParentImpl _value, $Res Function(_$ParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? children = null,
    Object? isFeelingGoodToday = null,
  }) {
    return _then(_$ParentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Child>,
      isFeelingGoodToday: null == isFeelingGoodToday
          ? _value.isFeelingGoodToday
          : isFeelingGoodToday // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ParentImpl implements Parent {
  const _$ParentImpl(
      {required this.id,
      final List<Child> children = const [],
      this.isFeelingGoodToday = true})
      : _children = children;

  @override
  final String id;
  final List<Child> _children;
  @override
  @JsonKey()
  List<Child> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  @JsonKey()
  final bool isFeelingGoodToday;

  @override
  String toString() {
    return 'Person.parent(id: $id, children: $children, isFeelingGoodToday: $isFeelingGoodToday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.isFeelingGoodToday, isFeelingGoodToday) ||
                other.isFeelingGoodToday == isFeelingGoodToday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_children), isFeelingGoodToday);

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentImplCopyWith<_$ParentImpl> get copyWith =>
      __$$ParentImplCopyWithImpl<_$ParentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, List<Child> children, bool isFeelingGoodToday)
        parent,
    required TResult Function(String id, bool hasMovedOut, String favoriteColor)
        child,
  }) {
    return parent(id, children, isFeelingGoodToday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Child> children, bool isFeelingGoodToday)?
        parent,
    TResult? Function(String id, bool hasMovedOut, String favoriteColor)? child,
  }) {
    return parent?.call(id, children, isFeelingGoodToday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Child> children, bool isFeelingGoodToday)?
        parent,
    TResult Function(String id, bool hasMovedOut, String favoriteColor)? child,
    required TResult orElse(),
  }) {
    if (parent != null) {
      return parent(id, children, isFeelingGoodToday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Parent value) parent,
    required TResult Function(Child value) child,
  }) {
    return parent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Parent value)? parent,
    TResult? Function(Child value)? child,
  }) {
    return parent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Parent value)? parent,
    TResult Function(Child value)? child,
    required TResult orElse(),
  }) {
    if (parent != null) {
      return parent(this);
    }
    return orElse();
  }
}

abstract class Parent implements Person {
  const factory Parent(
      {required final String id,
      final List<Child> children,
      final bool isFeelingGoodToday}) = _$ParentImpl;

  @override
  String get id;
  List<Child> get children;
  bool get isFeelingGoodToday;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParentImplCopyWith<_$ParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildImplCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$ChildImplCopyWith(
          _$ChildImpl value, $Res Function(_$ChildImpl) then) =
      __$$ChildImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool hasMovedOut, String favoriteColor});
}

/// @nodoc
class __$$ChildImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$ChildImpl>
    implements _$$ChildImplCopyWith<$Res> {
  __$$ChildImplCopyWithImpl(
      _$ChildImpl _value, $Res Function(_$ChildImpl) _then)
      : super(_value, _then);

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hasMovedOut = null,
    Object? favoriteColor = null,
  }) {
    return _then(_$ChildImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hasMovedOut: null == hasMovedOut
          ? _value.hasMovedOut
          : hasMovedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      favoriteColor: null == favoriteColor
          ? _value.favoriteColor
          : favoriteColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChildImpl implements Child {
  const _$ChildImpl(
      {required this.id,
      this.hasMovedOut = false,
      this.favoriteColor = 'blue'});

  @override
  final String id;
  @override
  @JsonKey()
  final bool hasMovedOut;
  @override
  @JsonKey()
  final String favoriteColor;

  @override
  String toString() {
    return 'Person.child(id: $id, hasMovedOut: $hasMovedOut, favoriteColor: $favoriteColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hasMovedOut, hasMovedOut) ||
                other.hasMovedOut == hasMovedOut) &&
            (identical(other.favoriteColor, favoriteColor) ||
                other.favoriteColor == favoriteColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, hasMovedOut, favoriteColor);

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildImplCopyWith<_$ChildImpl> get copyWith =>
      __$$ChildImplCopyWithImpl<_$ChildImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, List<Child> children, bool isFeelingGoodToday)
        parent,
    required TResult Function(String id, bool hasMovedOut, String favoriteColor)
        child,
  }) {
    return child(id, hasMovedOut, favoriteColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Child> children, bool isFeelingGoodToday)?
        parent,
    TResult? Function(String id, bool hasMovedOut, String favoriteColor)? child,
  }) {
    return child?.call(id, hasMovedOut, favoriteColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Child> children, bool isFeelingGoodToday)?
        parent,
    TResult Function(String id, bool hasMovedOut, String favoriteColor)? child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(id, hasMovedOut, favoriteColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Parent value) parent,
    required TResult Function(Child value) child,
  }) {
    return child(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Parent value)? parent,
    TResult? Function(Child value)? child,
  }) {
    return child?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Parent value)? parent,
    TResult Function(Child value)? child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(this);
    }
    return orElse();
  }
}

abstract class Child implements Person {
  const factory Child(
      {required final String id,
      final bool hasMovedOut,
      final String favoriteColor}) = _$ChildImpl;

  @override
  String get id;
  bool get hasMovedOut;
  String get favoriteColor;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildImplCopyWith<_$ChildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Mod {
  String get childId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentId, String childId) childIsBorn,
    required TResult Function(String childId) childMovesOut,
    required TResult Function(String childId, String newColor)
        childChangesFavoriteColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentId, String childId)? childIsBorn,
    TResult? Function(String childId)? childMovesOut,
    TResult? Function(String childId, String newColor)?
        childChangesFavoriteColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentId, String childId)? childIsBorn,
    TResult Function(String childId)? childMovesOut,
    TResult Function(String childId, String newColor)?
        childChangesFavoriteColor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildIsBorn value) childIsBorn,
    required TResult Function(ChildMovingOut value) childMovesOut,
    required TResult Function(ChildChangesFavoriteColor value)
        childChangesFavoriteColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildIsBorn value)? childIsBorn,
    TResult? Function(ChildMovingOut value)? childMovesOut,
    TResult? Function(ChildChangesFavoriteColor value)?
        childChangesFavoriteColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildIsBorn value)? childIsBorn,
    TResult Function(ChildMovingOut value)? childMovesOut,
    TResult Function(ChildChangesFavoriteColor value)?
        childChangesFavoriteColor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModCopyWith<Mod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModCopyWith<$Res> {
  factory $ModCopyWith(Mod value, $Res Function(Mod) then) =
      _$ModCopyWithImpl<$Res, Mod>;
  @useResult
  $Res call({String childId});
}

/// @nodoc
class _$ModCopyWithImpl<$Res, $Val extends Mod> implements $ModCopyWith<$Res> {
  _$ModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
  }) {
    return _then(_value.copyWith(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildIsBornImplCopyWith<$Res> implements $ModCopyWith<$Res> {
  factory _$$ChildIsBornImplCopyWith(
          _$ChildIsBornImpl value, $Res Function(_$ChildIsBornImpl) then) =
      __$$ChildIsBornImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String parentId, String childId});
}

/// @nodoc
class __$$ChildIsBornImplCopyWithImpl<$Res>
    extends _$ModCopyWithImpl<$Res, _$ChildIsBornImpl>
    implements _$$ChildIsBornImplCopyWith<$Res> {
  __$$ChildIsBornImplCopyWithImpl(
      _$ChildIsBornImpl _value, $Res Function(_$ChildIsBornImpl) _then)
      : super(_value, _then);

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? childId = null,
  }) {
    return _then(_$ChildIsBornImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChildIsBornImpl implements ChildIsBorn {
  const _$ChildIsBornImpl({required this.parentId, required this.childId});

  @override
  final String parentId;
  @override
  final String childId;

  @override
  String toString() {
    return 'Mod.childIsBorn(parentId: $parentId, childId: $childId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildIsBornImpl &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parentId, childId);

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildIsBornImplCopyWith<_$ChildIsBornImpl> get copyWith =>
      __$$ChildIsBornImplCopyWithImpl<_$ChildIsBornImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentId, String childId) childIsBorn,
    required TResult Function(String childId) childMovesOut,
    required TResult Function(String childId, String newColor)
        childChangesFavoriteColor,
  }) {
    return childIsBorn(parentId, childId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentId, String childId)? childIsBorn,
    TResult? Function(String childId)? childMovesOut,
    TResult? Function(String childId, String newColor)?
        childChangesFavoriteColor,
  }) {
    return childIsBorn?.call(parentId, childId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentId, String childId)? childIsBorn,
    TResult Function(String childId)? childMovesOut,
    TResult Function(String childId, String newColor)?
        childChangesFavoriteColor,
    required TResult orElse(),
  }) {
    if (childIsBorn != null) {
      return childIsBorn(parentId, childId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildIsBorn value) childIsBorn,
    required TResult Function(ChildMovingOut value) childMovesOut,
    required TResult Function(ChildChangesFavoriteColor value)
        childChangesFavoriteColor,
  }) {
    return childIsBorn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildIsBorn value)? childIsBorn,
    TResult? Function(ChildMovingOut value)? childMovesOut,
    TResult? Function(ChildChangesFavoriteColor value)?
        childChangesFavoriteColor,
  }) {
    return childIsBorn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildIsBorn value)? childIsBorn,
    TResult Function(ChildMovingOut value)? childMovesOut,
    TResult Function(ChildChangesFavoriteColor value)?
        childChangesFavoriteColor,
    required TResult orElse(),
  }) {
    if (childIsBorn != null) {
      return childIsBorn(this);
    }
    return orElse();
  }
}

abstract class ChildIsBorn implements Mod {
  const factory ChildIsBorn(
      {required final String parentId,
      required final String childId}) = _$ChildIsBornImpl;

  String get parentId;
  @override
  String get childId;

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildIsBornImplCopyWith<_$ChildIsBornImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildMovingOutImplCopyWith<$Res>
    implements $ModCopyWith<$Res> {
  factory _$$ChildMovingOutImplCopyWith(_$ChildMovingOutImpl value,
          $Res Function(_$ChildMovingOutImpl) then) =
      __$$ChildMovingOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String childId});
}

/// @nodoc
class __$$ChildMovingOutImplCopyWithImpl<$Res>
    extends _$ModCopyWithImpl<$Res, _$ChildMovingOutImpl>
    implements _$$ChildMovingOutImplCopyWith<$Res> {
  __$$ChildMovingOutImplCopyWithImpl(
      _$ChildMovingOutImpl _value, $Res Function(_$ChildMovingOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
  }) {
    return _then(_$ChildMovingOutImpl(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChildMovingOutImpl implements ChildMovingOut {
  const _$ChildMovingOutImpl({required this.childId});

  @override
  final String childId;

  @override
  String toString() {
    return 'Mod.childMovesOut(childId: $childId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildMovingOutImpl &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, childId);

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildMovingOutImplCopyWith<_$ChildMovingOutImpl> get copyWith =>
      __$$ChildMovingOutImplCopyWithImpl<_$ChildMovingOutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentId, String childId) childIsBorn,
    required TResult Function(String childId) childMovesOut,
    required TResult Function(String childId, String newColor)
        childChangesFavoriteColor,
  }) {
    return childMovesOut(childId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentId, String childId)? childIsBorn,
    TResult? Function(String childId)? childMovesOut,
    TResult? Function(String childId, String newColor)?
        childChangesFavoriteColor,
  }) {
    return childMovesOut?.call(childId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentId, String childId)? childIsBorn,
    TResult Function(String childId)? childMovesOut,
    TResult Function(String childId, String newColor)?
        childChangesFavoriteColor,
    required TResult orElse(),
  }) {
    if (childMovesOut != null) {
      return childMovesOut(childId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildIsBorn value) childIsBorn,
    required TResult Function(ChildMovingOut value) childMovesOut,
    required TResult Function(ChildChangesFavoriteColor value)
        childChangesFavoriteColor,
  }) {
    return childMovesOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildIsBorn value)? childIsBorn,
    TResult? Function(ChildMovingOut value)? childMovesOut,
    TResult? Function(ChildChangesFavoriteColor value)?
        childChangesFavoriteColor,
  }) {
    return childMovesOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildIsBorn value)? childIsBorn,
    TResult Function(ChildMovingOut value)? childMovesOut,
    TResult Function(ChildChangesFavoriteColor value)?
        childChangesFavoriteColor,
    required TResult orElse(),
  }) {
    if (childMovesOut != null) {
      return childMovesOut(this);
    }
    return orElse();
  }
}

abstract class ChildMovingOut implements Mod {
  const factory ChildMovingOut({required final String childId}) =
      _$ChildMovingOutImpl;

  @override
  String get childId;

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildMovingOutImplCopyWith<_$ChildMovingOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildChangesFavoriteColorImplCopyWith<$Res>
    implements $ModCopyWith<$Res> {
  factory _$$ChildChangesFavoriteColorImplCopyWith(
          _$ChildChangesFavoriteColorImpl value,
          $Res Function(_$ChildChangesFavoriteColorImpl) then) =
      __$$ChildChangesFavoriteColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String childId, String newColor});
}

/// @nodoc
class __$$ChildChangesFavoriteColorImplCopyWithImpl<$Res>
    extends _$ModCopyWithImpl<$Res, _$ChildChangesFavoriteColorImpl>
    implements _$$ChildChangesFavoriteColorImplCopyWith<$Res> {
  __$$ChildChangesFavoriteColorImplCopyWithImpl(
      _$ChildChangesFavoriteColorImpl _value,
      $Res Function(_$ChildChangesFavoriteColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? newColor = null,
  }) {
    return _then(_$ChildChangesFavoriteColorImpl(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
      newColor: null == newColor
          ? _value.newColor
          : newColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChildChangesFavoriteColorImpl implements ChildChangesFavoriteColor {
  const _$ChildChangesFavoriteColorImpl(
      {required this.childId, required this.newColor});

  @override
  final String childId;
  @override
  final String newColor;

  @override
  String toString() {
    return 'Mod.childChangesFavoriteColor(childId: $childId, newColor: $newColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildChangesFavoriteColorImpl &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.newColor, newColor) ||
                other.newColor == newColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, childId, newColor);

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildChangesFavoriteColorImplCopyWith<_$ChildChangesFavoriteColorImpl>
      get copyWith => __$$ChildChangesFavoriteColorImplCopyWithImpl<
          _$ChildChangesFavoriteColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String parentId, String childId) childIsBorn,
    required TResult Function(String childId) childMovesOut,
    required TResult Function(String childId, String newColor)
        childChangesFavoriteColor,
  }) {
    return childChangesFavoriteColor(childId, newColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String parentId, String childId)? childIsBorn,
    TResult? Function(String childId)? childMovesOut,
    TResult? Function(String childId, String newColor)?
        childChangesFavoriteColor,
  }) {
    return childChangesFavoriteColor?.call(childId, newColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String parentId, String childId)? childIsBorn,
    TResult Function(String childId)? childMovesOut,
    TResult Function(String childId, String newColor)?
        childChangesFavoriteColor,
    required TResult orElse(),
  }) {
    if (childChangesFavoriteColor != null) {
      return childChangesFavoriteColor(childId, newColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildIsBorn value) childIsBorn,
    required TResult Function(ChildMovingOut value) childMovesOut,
    required TResult Function(ChildChangesFavoriteColor value)
        childChangesFavoriteColor,
  }) {
    return childChangesFavoriteColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildIsBorn value)? childIsBorn,
    TResult? Function(ChildMovingOut value)? childMovesOut,
    TResult? Function(ChildChangesFavoriteColor value)?
        childChangesFavoriteColor,
  }) {
    return childChangesFavoriteColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildIsBorn value)? childIsBorn,
    TResult Function(ChildMovingOut value)? childMovesOut,
    TResult Function(ChildChangesFavoriteColor value)?
        childChangesFavoriteColor,
    required TResult orElse(),
  }) {
    if (childChangesFavoriteColor != null) {
      return childChangesFavoriteColor(this);
    }
    return orElse();
  }
}

abstract class ChildChangesFavoriteColor implements Mod {
  const factory ChildChangesFavoriteColor(
      {required final String childId,
      required final String newColor}) = _$ChildChangesFavoriteColorImpl;

  @override
  String get childId;
  String get newColor;

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildChangesFavoriteColorImplCopyWith<_$ChildChangesFavoriteColorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
