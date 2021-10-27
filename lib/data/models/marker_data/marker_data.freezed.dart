// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'marker_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarkerData _$MarkerDataFromJson(Map<String, dynamic> json) {
  return _MarkerData.fromJson(json);
}

/// @nodoc
class _$MarkerDataTearOff {
  const _$MarkerDataTearOff();

  _MarkerData call({List<Marker>? markers}) {
    return _MarkerData(
      markers: markers,
    );
  }

  MarkerData fromJson(Map<String, Object> json) {
    return MarkerData.fromJson(json);
  }
}

/// @nodoc
const $MarkerData = _$MarkerDataTearOff();

/// @nodoc
mixin _$MarkerData {
  List<Marker>? get markers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkerDataCopyWith<MarkerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerDataCopyWith<$Res> {
  factory $MarkerDataCopyWith(
          MarkerData value, $Res Function(MarkerData) then) =
      _$MarkerDataCopyWithImpl<$Res>;
  $Res call({List<Marker>? markers});
}

/// @nodoc
class _$MarkerDataCopyWithImpl<$Res> implements $MarkerDataCopyWith<$Res> {
  _$MarkerDataCopyWithImpl(this._value, this._then);

  final MarkerData _value;
  // ignore: unused_field
  final $Res Function(MarkerData) _then;

  @override
  $Res call({
    Object? markers = freezed,
  }) {
    return _then(_value.copyWith(
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>?,
    ));
  }
}

/// @nodoc
abstract class _$MarkerDataCopyWith<$Res> implements $MarkerDataCopyWith<$Res> {
  factory _$MarkerDataCopyWith(
          _MarkerData value, $Res Function(_MarkerData) then) =
      __$MarkerDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Marker>? markers});
}

/// @nodoc
class __$MarkerDataCopyWithImpl<$Res> extends _$MarkerDataCopyWithImpl<$Res>
    implements _$MarkerDataCopyWith<$Res> {
  __$MarkerDataCopyWithImpl(
      _MarkerData _value, $Res Function(_MarkerData) _then)
      : super(_value, (v) => _then(v as _MarkerData));

  @override
  _MarkerData get _value => super._value as _MarkerData;

  @override
  $Res call({
    Object? markers = freezed,
  }) {
    return _then(_MarkerData(
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarkerData implements _MarkerData {
  _$_MarkerData({this.markers});

  factory _$_MarkerData.fromJson(Map<String, dynamic> json) =>
      _$_$_MarkerDataFromJson(json);

  @override
  final List<Marker>? markers;

  @override
  String toString() {
    return 'MarkerData(markers: $markers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarkerData &&
            (identical(other.markers, markers) ||
                const DeepCollectionEquality().equals(other.markers, markers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(markers);

  @JsonKey(ignore: true)
  @override
  _$MarkerDataCopyWith<_MarkerData> get copyWith =>
      __$MarkerDataCopyWithImpl<_MarkerData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MarkerDataToJson(this);
  }
}

abstract class _MarkerData implements MarkerData {
  factory _MarkerData({List<Marker>? markers}) = _$_MarkerData;

  factory _MarkerData.fromJson(Map<String, dynamic> json) =
      _$_MarkerData.fromJson;

  @override
  List<Marker>? get markers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MarkerDataCopyWith<_MarkerData> get copyWith =>
      throw _privateConstructorUsedError;
}
