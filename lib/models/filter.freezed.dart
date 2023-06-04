// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Filter {
  bool get glutenFree => throw _privateConstructorUsedError;
  bool get lactoseFree => throw _privateConstructorUsedError;
  bool get vegan => throw _privateConstructorUsedError;
  bool get vegetarian => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res, Filter>;
  @useResult
  $Res call({bool glutenFree, bool lactoseFree, bool vegan, bool vegetarian});
}

/// @nodoc
class _$FilterCopyWithImpl<$Res, $Val extends Filter>
    implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? glutenFree = null,
    Object? lactoseFree = null,
    Object? vegan = null,
    Object? vegetarian = null,
  }) {
    return _then(_value.copyWith(
      glutenFree: null == glutenFree
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      lactoseFree: null == lactoseFree
          ? _value.lactoseFree
          : lactoseFree // ignore: cast_nullable_to_non_nullable
              as bool,
      vegan: null == vegan
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      vegetarian: null == vegetarian
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$$_FilterCopyWith(_$_Filter value, $Res Function(_$_Filter) then) =
      __$$_FilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool glutenFree, bool lactoseFree, bool vegan, bool vegetarian});
}

/// @nodoc
class __$$_FilterCopyWithImpl<$Res>
    extends _$FilterCopyWithImpl<$Res, _$_Filter>
    implements _$$_FilterCopyWith<$Res> {
  __$$_FilterCopyWithImpl(_$_Filter _value, $Res Function(_$_Filter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? glutenFree = null,
    Object? lactoseFree = null,
    Object? vegan = null,
    Object? vegetarian = null,
  }) {
    return _then(_$_Filter(
      glutenFree: null == glutenFree
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      lactoseFree: null == lactoseFree
          ? _value.lactoseFree
          : lactoseFree // ignore: cast_nullable_to_non_nullable
              as bool,
      vegan: null == vegan
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      vegetarian: null == vegetarian
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Filter implements _Filter {
  const _$_Filter(
      {this.glutenFree = false,
      this.lactoseFree = false,
      this.vegan = false,
      this.vegetarian = false});

  @override
  @JsonKey()
  final bool glutenFree;
  @override
  @JsonKey()
  final bool lactoseFree;
  @override
  @JsonKey()
  final bool vegan;
  @override
  @JsonKey()
  final bool vegetarian;

  @override
  String toString() {
    return 'Filter(glutenFree: $glutenFree, lactoseFree: $lactoseFree, vegan: $vegan, vegetarian: $vegetarian)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Filter &&
            (identical(other.glutenFree, glutenFree) ||
                other.glutenFree == glutenFree) &&
            (identical(other.lactoseFree, lactoseFree) ||
                other.lactoseFree == lactoseFree) &&
            (identical(other.vegan, vegan) || other.vegan == vegan) &&
            (identical(other.vegetarian, vegetarian) ||
                other.vegetarian == vegetarian));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, glutenFree, lactoseFree, vegan, vegetarian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterCopyWith<_$_Filter> get copyWith =>
      __$$_FilterCopyWithImpl<_$_Filter>(this, _$identity);
}

abstract class _Filter implements Filter {
  const factory _Filter(
      {final bool glutenFree,
      final bool lactoseFree,
      final bool vegan,
      final bool vegetarian}) = _$_Filter;

  @override
  bool get glutenFree;
  @override
  bool get lactoseFree;
  @override
  bool get vegan;
  @override
  bool get vegetarian;
  @override
  @JsonKey(ignore: true)
  _$$_FilterCopyWith<_$_Filter> get copyWith =>
      throw _privateConstructorUsedError;
}
