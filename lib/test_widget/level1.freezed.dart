// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Level1 _$Level1FromJson(Map<String, dynamic> json) {
  return _Level1.fromJson(json);
}

/// @nodoc
mixin _$Level1 {
// 名前
  String get name => throw _privateConstructorUsedError; // 色
  String get color => throw _privateConstructorUsedError; // 旬の季節
  String get season => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Level1CopyWith<Level1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Level1CopyWith<$Res> {
  factory $Level1CopyWith(Level1 value, $Res Function(Level1) then) =
      _$Level1CopyWithImpl<$Res, Level1>;
  @useResult
  $Res call({String name, String color, String season});
}

/// @nodoc
class _$Level1CopyWithImpl<$Res, $Val extends Level1>
    implements $Level1CopyWith<$Res> {
  _$Level1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? season = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Level1ImplCopyWith<$Res> implements $Level1CopyWith<$Res> {
  factory _$$Level1ImplCopyWith(
          _$Level1Impl value, $Res Function(_$Level1Impl) then) =
      __$$Level1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String color, String season});
}

/// @nodoc
class __$$Level1ImplCopyWithImpl<$Res>
    extends _$Level1CopyWithImpl<$Res, _$Level1Impl>
    implements _$$Level1ImplCopyWith<$Res> {
  __$$Level1ImplCopyWithImpl(
      _$Level1Impl _value, $Res Function(_$Level1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? season = null,
  }) {
    return _then(_$Level1Impl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Level1Impl implements _Level1 {
  const _$Level1Impl(
      {required this.name, required this.color, required this.season});

  factory _$Level1Impl.fromJson(Map<String, dynamic> json) =>
      _$$Level1ImplFromJson(json);

// 名前
  @override
  final String name;
// 色
  @override
  final String color;
// 旬の季節
  @override
  final String season;

  @override
  String toString() {
    return 'Level1(name: $name, color: $color, season: $season)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Level1Impl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.season, season) || other.season == season));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, color, season);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Level1ImplCopyWith<_$Level1Impl> get copyWith =>
      __$$Level1ImplCopyWithImpl<_$Level1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Level1ImplToJson(
      this,
    );
  }
}

abstract class _Level1 implements Level1 {
  const factory _Level1(
      {required final String name,
      required final String color,
      required final String season}) = _$Level1Impl;

  factory _Level1.fromJson(Map<String, dynamic> json) = _$Level1Impl.fromJson;

  @override // 名前
  String get name;
  @override // 色
  String get color;
  @override // 旬の季節
  String get season;
  @override
  @JsonKey(ignore: true)
  _$$Level1ImplCopyWith<_$Level1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
