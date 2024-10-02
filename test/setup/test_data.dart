import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_data.freezed.dart';

@freezed
sealed class Person with _$Person {
  const factory Person.parent({
    required String id,
    @Default([]) List<Child> children,
    @Default(true) bool isFeelingGoodToday,
  }) = Parent;

  const factory Person.child({
    required String id,
    @Default(false) bool hasMovedOut,
    @Default('blue') String favoriteColor,
  }) = Child;
}

@freezed
sealed class Mod with _$Mod {
  const factory Mod.childIsBorn({
    required String parentId,
    required String childId,
  }) = ChildIsBorn;
  const factory Mod.childMovesOut({
    required String childId,
  }) = ChildMovingOut;
  const factory Mod.childChangesFavoriteColor({
    required String childId,
    required String newColor,
  }) = ChildChangesFavoriteColor;
}
