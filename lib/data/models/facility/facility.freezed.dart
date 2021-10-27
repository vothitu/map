// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'facility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Facility _$FacilityFromJson(Map<String, dynamic> json) {
  return _Facility.fromJson(json);
}

/// @nodoc
class _$FacilityTearOff {
  const _$FacilityTearOff();

  _Facility call(
      {int? id,
      String? name,
      String? description,
      int? numberOfFacility,
      Location? location,
      String? address,
      String? designImageUrl,
      String? backgroundImageUrl,
      String? updatedAt,
      String? keywords}) {
    return _Facility(
      id: id,
      name: name,
      description: description,
      numberOfFacility: numberOfFacility,
      location: location,
      address: address,
      designImageUrl: designImageUrl,
      backgroundImageUrl: backgroundImageUrl,
      updatedAt: updatedAt,
      keywords: keywords,
    );
  }

  Facility fromJson(Map<String, Object> json) {
    return Facility.fromJson(json);
  }
}

/// @nodoc
const $Facility = _$FacilityTearOff();

/// @nodoc
mixin _$Facility {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get numberOfFacility => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get designImageUrl => throw _privateConstructorUsedError;
  String? get backgroundImageUrl => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get keywords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityCopyWith<Facility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityCopyWith<$Res> {
  factory $FacilityCopyWith(Facility value, $Res Function(Facility) then) =
      _$FacilityCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? numberOfFacility,
      Location? location,
      String? address,
      String? designImageUrl,
      String? backgroundImageUrl,
      String? updatedAt,
      String? keywords});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$FacilityCopyWithImpl<$Res> implements $FacilityCopyWith<$Res> {
  _$FacilityCopyWithImpl(this._value, this._then);

  final Facility _value;
  // ignore: unused_field
  final $Res Function(Facility) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? numberOfFacility = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? designImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
    Object? updatedAt = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfFacility: numberOfFacility == freezed
          ? _value.numberOfFacility
          : numberOfFacility // ignore: cast_nullable_to_non_nullable
              as int?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      designImageUrl: designImageUrl == freezed
          ? _value.designImageUrl
          : designImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImageUrl: backgroundImageUrl == freezed
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$FacilityCopyWith<$Res> implements $FacilityCopyWith<$Res> {
  factory _$FacilityCopyWith(_Facility value, $Res Function(_Facility) then) =
      __$FacilityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? numberOfFacility,
      Location? location,
      String? address,
      String? designImageUrl,
      String? backgroundImageUrl,
      String? updatedAt,
      String? keywords});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$FacilityCopyWithImpl<$Res> extends _$FacilityCopyWithImpl<$Res>
    implements _$FacilityCopyWith<$Res> {
  __$FacilityCopyWithImpl(_Facility _value, $Res Function(_Facility) _then)
      : super(_value, (v) => _then(v as _Facility));

  @override
  _Facility get _value => super._value as _Facility;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? numberOfFacility = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? designImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
    Object? updatedAt = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_Facility(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfFacility: numberOfFacility == freezed
          ? _value.numberOfFacility
          : numberOfFacility // ignore: cast_nullable_to_non_nullable
              as int?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      designImageUrl: designImageUrl == freezed
          ? _value.designImageUrl
          : designImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImageUrl: backgroundImageUrl == freezed
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Facility implements _Facility {
  _$_Facility(
      {this.id,
      this.name,
      this.description,
      this.numberOfFacility,
      this.location,
      this.address,
      this.designImageUrl,
      this.backgroundImageUrl,
      this.updatedAt,
      this.keywords});

  factory _$_Facility.fromJson(Map<String, dynamic> json) =>
      _$_$_FacilityFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? numberOfFacility;
  @override
  final Location? location;
  @override
  final String? address;
  @override
  final String? designImageUrl;
  @override
  final String? backgroundImageUrl;
  @override
  final String? updatedAt;
  @override
  final String? keywords;

  @override
  String toString() {
    return 'Facility(id: $id, name: $name, description: $description, numberOfFacility: $numberOfFacility, location: $location, address: $address, designImageUrl: $designImageUrl, backgroundImageUrl: $backgroundImageUrl, updatedAt: $updatedAt, keywords: $keywords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Facility &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.numberOfFacility, numberOfFacility) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfFacility, numberOfFacility)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.designImageUrl, designImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.designImageUrl, designImageUrl)) &&
            (identical(other.backgroundImageUrl, backgroundImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundImageUrl, backgroundImageUrl)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.keywords, keywords) ||
                const DeepCollectionEquality()
                    .equals(other.keywords, keywords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(numberOfFacility) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(designImageUrl) ^
      const DeepCollectionEquality().hash(backgroundImageUrl) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(keywords);

  @JsonKey(ignore: true)
  @override
  _$FacilityCopyWith<_Facility> get copyWith =>
      __$FacilityCopyWithImpl<_Facility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FacilityToJson(this);
  }
}

abstract class _Facility implements Facility {
  factory _Facility(
      {int? id,
      String? name,
      String? description,
      int? numberOfFacility,
      Location? location,
      String? address,
      String? designImageUrl,
      String? backgroundImageUrl,
      String? updatedAt,
      String? keywords}) = _$_Facility;

  factory _Facility.fromJson(Map<String, dynamic> json) = _$_Facility.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get numberOfFacility => throw _privateConstructorUsedError;
  @override
  Location? get location => throw _privateConstructorUsedError;
  @override
  String? get address => throw _privateConstructorUsedError;
  @override
  String? get designImageUrl => throw _privateConstructorUsedError;
  @override
  String? get backgroundImageUrl => throw _privateConstructorUsedError;
  @override
  String? get updatedAt => throw _privateConstructorUsedError;
  @override
  String? get keywords => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FacilityCopyWith<_Facility> get copyWith =>
      throw _privateConstructorUsedError;
}
