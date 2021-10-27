// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'buildings_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuildingsData _$BuildingsDataFromJson(Map<String, dynamic> json) {
  return _BuildingsData.fromJson(json);
}

/// @nodoc
class _$BuildingsDataTearOff {
  const _$BuildingsDataTearOff();

  _BuildingsData call({List<Building>? buildings, int? total}) {
    return _BuildingsData(
      buildings: buildings,
      total: total,
    );
  }

  BuildingsData fromJson(Map<String, Object> json) {
    return BuildingsData.fromJson(json);
  }
}

/// @nodoc
const $BuildingsData = _$BuildingsDataTearOff();

/// @nodoc
mixin _$BuildingsData {
  List<Building>? get buildings => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildingsDataCopyWith<BuildingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingsDataCopyWith<$Res> {
  factory $BuildingsDataCopyWith(
          BuildingsData value, $Res Function(BuildingsData) then) =
      _$BuildingsDataCopyWithImpl<$Res>;
  $Res call({List<Building>? buildings, int? total});
}

/// @nodoc
class _$BuildingsDataCopyWithImpl<$Res>
    implements $BuildingsDataCopyWith<$Res> {
  _$BuildingsDataCopyWithImpl(this._value, this._then);

  final BuildingsData _value;
  // ignore: unused_field
  final $Res Function(BuildingsData) _then;

  @override
  $Res call({
    Object? buildings = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      buildings: buildings == freezed
          ? _value.buildings
          : buildings // ignore: cast_nullable_to_non_nullable
              as List<Building>?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BuildingsDataCopyWith<$Res>
    implements $BuildingsDataCopyWith<$Res> {
  factory _$BuildingsDataCopyWith(
          _BuildingsData value, $Res Function(_BuildingsData) then) =
      __$BuildingsDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Building>? buildings, int? total});
}

/// @nodoc
class __$BuildingsDataCopyWithImpl<$Res>
    extends _$BuildingsDataCopyWithImpl<$Res>
    implements _$BuildingsDataCopyWith<$Res> {
  __$BuildingsDataCopyWithImpl(
      _BuildingsData _value, $Res Function(_BuildingsData) _then)
      : super(_value, (v) => _then(v as _BuildingsData));

  @override
  _BuildingsData get _value => super._value as _BuildingsData;

  @override
  $Res call({
    Object? buildings = freezed,
    Object? total = freezed,
  }) {
    return _then(_BuildingsData(
      buildings: buildings == freezed
          ? _value.buildings
          : buildings // ignore: cast_nullable_to_non_nullable
              as List<Building>?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BuildingsData implements _BuildingsData {
  _$_BuildingsData({this.buildings, this.total});

  factory _$_BuildingsData.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildingsDataFromJson(json);

  @override
  final List<Building>? buildings;
  @override
  final int? total;

  @override
  String toString() {
    return 'BuildingsData(buildings: $buildings, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildingsData &&
            (identical(other.buildings, buildings) ||
                const DeepCollectionEquality()
                    .equals(other.buildings, buildings)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buildings) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$BuildingsDataCopyWith<_BuildingsData> get copyWith =>
      __$BuildingsDataCopyWithImpl<_BuildingsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildingsDataToJson(this);
  }
}

abstract class _BuildingsData implements BuildingsData {
  factory _BuildingsData({List<Building>? buildings, int? total}) =
      _$_BuildingsData;

  factory _BuildingsData.fromJson(Map<String, dynamic> json) =
      _$_BuildingsData.fromJson;

  @override
  List<Building>? get buildings => throw _privateConstructorUsedError;
  @override
  int? get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BuildingsDataCopyWith<_BuildingsData> get copyWith =>
      throw _privateConstructorUsedError;
}
