import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

@freezed
class Filter with _$Filter {
  const factory Filter({
    @Default(false) bool glutenFree,
    @Default(false) bool lactoseFree,
    @Default(false) bool vegan,
    @Default(false) bool vegetarian,
  }) = _Filter;
}
