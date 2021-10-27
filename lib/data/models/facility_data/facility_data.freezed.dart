// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'facility_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacilityData _$FacilityDataFromJson(Map<String, dynamic> json) {
  return _FacilityData.fromJson(json);
}

/// @nodoc
class _$FacilityDataTearOff {
  const _$FacilityDataTearOff();

  _FacilityData call({List<Facility>? facilities}) {
    return _FacilityData(
      facilities: facilities,
    );
  }

  FacilityData fromJson(Map<String, Object> json) {
    return FacilityData.fromJson(json);
  }
}

/// @nodoc
const $FacilityData = _$FacilityDataTearOff();

/// @nodoc
mixin _$FacilityData {
  List<Facility>? get facilities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityDataCopyWith<FacilityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityDataCopyWith<$Res> {
  factory $FacilityDataCopyWith(
          FacilityData value, $Res Function(FacilityData) then) =
      _$FacilityDataCopyWithImpl<$Res>;
  $Res call({List<Facility>? facilities});
}

/// @nodoc
class _$FacilityDataCopyWithImpl<$Res> implements $FacilityDataCopyWith<$Res> {
  _$FacilityDataCopyWithImpl(this._value, this._then);

  final FacilityData _value;
  // ignore: unused_field
  final $Res Function(FacilityData) _then;

  @override
  $Res call({
    Object? facilities = freezed,
  }) {
    return _then(_value.copyWith(
      facilities: facilities == freezed
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
    ));
  }
}

/// @nodoc
abstract class _$FacilityDataCopyWith<$Res>
    implements $FacilityDataCopyWith<$Res> {
  factory _$FacilityDataCopyWith(
          _FacilityData value, $Res Function(_FacilityData) then) =
      __$FacilityDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Facility>? facilities});
}

/// @nodoc
class __$FacilityDataCopyWithImpl<$Res> extends _$FacilityDataCopyWithImpl<$Res>
    implements _$FacilityDataCopyWith<$Res> {
  __$FacilityDataCopyWithImpl(
      _FacilityData _value, $Res Function(_FacilityData) _then)
      : super(_value, (v) => _then(v as _FacilityData));

  @override
  _FacilityData get _value => super._value as _FacilityData;

  @override
  $Res call({
    Object? facilities = freezed,
  }) {
    return _then(_FacilityData(
      facilities: facilities == freezed
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FacilityData implements _FacilityData {
  _$_FacilityData({this.facilities});

  factory _$_FacilityData.fromJson(Map<String, dynamic> json) =>
      _$_$_FacilityDataFromJson(json);

  @override
  final List<Facility>? facilities;

  @override
  String toString() {
    return 'FacilityData(facilities: $facilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FacilityData &&
            (identical(other.facilities, facilities) ||
                const DeepCollectionEquality()
                    .equals(other.facilities, facilities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(facilities);

  @JsonKey(ignore: true)
  @override
  _$FacilityDataCopyWith<_FacilityData> get copyWith =>
      __$FacilityDataCopyWithImpl<_FacilityData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FacilityDataToJson(this);
  }
}

abstract class _FacilityData implements FacilityData {
  factory _FacilityData({List<Facility>? facilities}) = _$_FacilityData;

  factory _FacilityData.fromJson(Map<String, dynamic> json) =
      _$_FacilityData.fromJson;

  @override
  List<Facility>? get facilities => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FacilityDataCopyWith<_FacilityData> get copyWith =>
      throw _privateConstructorUsedError;
}
