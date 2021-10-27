// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'direction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DirectionData _$DirectionDataFromJson(Map<String, dynamic> json) {
  return _DirectionData.fromJson(json);
}

/// @nodoc
class _$DirectionDataTearOff {
  const _$DirectionDataTearOff();

  _DirectionData call({Direction? directions}) {
    return _DirectionData(
      directions: directions,
    );
  }

  DirectionData fromJson(Map<String, Object> json) {
    return DirectionData.fromJson(json);
  }
}

/// @nodoc
const $DirectionData = _$DirectionDataTearOff();

/// @nodoc
mixin _$DirectionData {
  Direction? get directions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionDataCopyWith<DirectionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionDataCopyWith<$Res> {
  factory $DirectionDataCopyWith(
          DirectionData value, $Res Function(DirectionData) then) =
      _$DirectionDataCopyWithImpl<$Res>;
  $Res call({Direction? directions});

  $DirectionCopyWith<$Res>? get directions;
}

/// @nodoc
class _$DirectionDataCopyWithImpl<$Res>
    implements $DirectionDataCopyWith<$Res> {
  _$DirectionDataCopyWithImpl(this._value, this._then);

  final DirectionData _value;
  // ignore: unused_field
  final $Res Function(DirectionData) _then;

  @override
  $Res call({
    Object? directions = freezed,
  }) {
    return _then(_value.copyWith(
      directions: directions == freezed
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as Direction?,
    ));
  }

  @override
  $DirectionCopyWith<$Res>? get directions {
    if (_value.directions == null) {
      return null;
    }

    return $DirectionCopyWith<$Res>(_value.directions!, (value) {
      return _then(_value.copyWith(directions: value));
    });
  }
}

/// @nodoc
abstract class _$DirectionDataCopyWith<$Res>
    implements $DirectionDataCopyWith<$Res> {
  factory _$DirectionDataCopyWith(
          _DirectionData value, $Res Function(_DirectionData) then) =
      __$DirectionDataCopyWithImpl<$Res>;
  @override
  $Res call({Direction? directions});

  @override
  $DirectionCopyWith<$Res>? get directions;
}

/// @nodoc
class __$DirectionDataCopyWithImpl<$Res>
    extends _$DirectionDataCopyWithImpl<$Res>
    implements _$DirectionDataCopyWith<$Res> {
  __$DirectionDataCopyWithImpl(
      _DirectionData _value, $Res Function(_DirectionData) _then)
      : super(_value, (v) => _then(v as _DirectionData));

  @override
  _DirectionData get _value => super._value as _DirectionData;

  @override
  $Res call({
    Object? directions = freezed,
  }) {
    return _then(_DirectionData(
      directions: directions == freezed
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as Direction?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionData implements _DirectionData {
  _$_DirectionData({this.directions});

  factory _$_DirectionData.fromJson(Map<String, dynamic> json) =>
      _$_$_DirectionDataFromJson(json);

  @override
  final Direction? directions;

  @override
  String toString() {
    return 'DirectionData(directions: $directions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DirectionData &&
            (identical(other.directions, directions) ||
                const DeepCollectionEquality()
                    .equals(other.directions, directions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(directions);

  @JsonKey(ignore: true)
  @override
  _$DirectionDataCopyWith<_DirectionData> get copyWith =>
      __$DirectionDataCopyWithImpl<_DirectionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DirectionDataToJson(this);
  }
}

abstract class _DirectionData implements DirectionData {
  factory _DirectionData({Direction? directions}) = _$_DirectionData;

  factory _DirectionData.fromJson(Map<String, dynamic> json) =
      _$_DirectionData.fromJson;

  @override
  Direction? get directions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DirectionDataCopyWith<_DirectionData> get copyWith =>
      throw _privateConstructorUsedError;
}
