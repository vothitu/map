// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'direction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Direction _$DirectionFromJson(Map<String, dynamic> json) {
  return _Direction.fromJson(json);
}

/// @nodoc
class _$DirectionTearOff {
  const _$DirectionTearOff();

  _Direction call(
      {String? directionId, List<Point>? paths, List<Text>? texts}) {
    return _Direction(
      directionId: directionId,
      paths: paths,
      texts: texts,
    );
  }

  Direction fromJson(Map<String, Object> json) {
    return Direction.fromJson(json);
  }
}

/// @nodoc
const $Direction = _$DirectionTearOff();

/// @nodoc
mixin _$Direction {
  String? get directionId => throw _privateConstructorUsedError;
  List<Point>? get paths => throw _privateConstructorUsedError;
  List<Text>? get texts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionCopyWith<Direction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionCopyWith<$Res> {
  factory $DirectionCopyWith(Direction value, $Res Function(Direction) then) =
      _$DirectionCopyWithImpl<$Res>;
  $Res call({String? directionId, List<Point>? paths, List<Text>? texts});
}

/// @nodoc
class _$DirectionCopyWithImpl<$Res> implements $DirectionCopyWith<$Res> {
  _$DirectionCopyWithImpl(this._value, this._then);

  final Direction _value;
  // ignore: unused_field
  final $Res Function(Direction) _then;

  @override
  $Res call({
    Object? directionId = freezed,
    Object? paths = freezed,
    Object? texts = freezed,
  }) {
    return _then(_value.copyWith(
      directionId: directionId == freezed
          ? _value.directionId
          : directionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paths: paths == freezed
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<Point>?,
      texts: texts == freezed
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<Text>?,
    ));
  }
}

/// @nodoc
abstract class _$DirectionCopyWith<$Res> implements $DirectionCopyWith<$Res> {
  factory _$DirectionCopyWith(
          _Direction value, $Res Function(_Direction) then) =
      __$DirectionCopyWithImpl<$Res>;
  @override
  $Res call({String? directionId, List<Point>? paths, List<Text>? texts});
}

/// @nodoc
class __$DirectionCopyWithImpl<$Res> extends _$DirectionCopyWithImpl<$Res>
    implements _$DirectionCopyWith<$Res> {
  __$DirectionCopyWithImpl(_Direction _value, $Res Function(_Direction) _then)
      : super(_value, (v) => _then(v as _Direction));

  @override
  _Direction get _value => super._value as _Direction;

  @override
  $Res call({
    Object? directionId = freezed,
    Object? paths = freezed,
    Object? texts = freezed,
  }) {
    return _then(_Direction(
      directionId: directionId == freezed
          ? _value.directionId
          : directionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paths: paths == freezed
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<Point>?,
      texts: texts == freezed
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<Text>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Direction implements _Direction {
  _$_Direction({this.directionId, this.paths, this.texts});

  factory _$_Direction.fromJson(Map<String, dynamic> json) =>
      _$_$_DirectionFromJson(json);

  @override
  final String? directionId;
  @override
  final List<Point>? paths;
  @override
  final List<Text>? texts;

  @override
  String toString() {
    return 'Direction(directionId: $directionId, paths: $paths, texts: $texts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Direction &&
            (identical(other.directionId, directionId) ||
                const DeepCollectionEquality()
                    .equals(other.directionId, directionId)) &&
            (identical(other.paths, paths) ||
                const DeepCollectionEquality().equals(other.paths, paths)) &&
            (identical(other.texts, texts) ||
                const DeepCollectionEquality().equals(other.texts, texts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(directionId) ^
      const DeepCollectionEquality().hash(paths) ^
      const DeepCollectionEquality().hash(texts);

  @JsonKey(ignore: true)
  @override
  _$DirectionCopyWith<_Direction> get copyWith =>
      __$DirectionCopyWithImpl<_Direction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DirectionToJson(this);
  }
}

abstract class _Direction implements Direction {
  factory _Direction(
      {String? directionId,
      List<Point>? paths,
      List<Text>? texts}) = _$_Direction;

  factory _Direction.fromJson(Map<String, dynamic> json) =
      _$_Direction.fromJson;

  @override
  String? get directionId => throw _privateConstructorUsedError;
  @override
  List<Point>? get paths => throw _privateConstructorUsedError;
  @override
  List<Text>? get texts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DirectionCopyWith<_Direction> get copyWith =>
      throw _privateConstructorUsedError;
}
