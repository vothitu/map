// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'building.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Building _$BuildingFromJson(Map<String, dynamic> json) {
  return _Building.fromJson(json);
}

/// @nodoc
class _$BuildingTearOff {
  const _$BuildingTearOff();

  _Building call(
      {int? id,
      String? name,
      String? description,
      int? numbersOfFloors,
      Location? location,
      String? designImageUrl,
      List<Point>? paths,
      DateTime? updatedAt,
      String? keywords}) {
    return _Building(
      id: id,
      name: name,
      description: description,
      numbersOfFloors: numbersOfFloors,
      location: location,
      designImageUrl: designImageUrl,
      paths: paths,
      updatedAt: updatedAt,
      keywords: keywords,
    );
  }

  Building fromJson(Map<String, Object> json) {
    return Building.fromJson(json);
  }
}

/// @nodoc
const $Building = _$BuildingTearOff();

/// @nodoc
mixin _$Building {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get numbersOfFloors => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  String? get designImageUrl => throw _privateConstructorUsedError;
  List<Point>? get paths => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get keywords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildingCopyWith<Building> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingCopyWith<$Res> {
  factory $BuildingCopyWith(Building value, $Res Function(Building) then) =
      _$BuildingCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? numbersOfFloors,
      Location? location,
      String? designImageUrl,
      List<Point>? paths,
      DateTime? updatedAt,
      String? keywords});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$BuildingCopyWithImpl<$Res> implements $BuildingCopyWith<$Res> {
  _$BuildingCopyWithImpl(this._value, this._then);

  final Building _value;
  // ignore: unused_field
  final $Res Function(Building) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? numbersOfFloors = freezed,
    Object? location = freezed,
    Object? designImageUrl = freezed,
    Object? paths = freezed,
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
      numbersOfFloors: numbersOfFloors == freezed
          ? _value.numbersOfFloors
          : numbersOfFloors // ignore: cast_nullable_to_non_nullable
              as int?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      designImageUrl: designImageUrl == freezed
          ? _value.designImageUrl
          : designImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paths: paths == freezed
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<Point>?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$BuildingCopyWith<$Res> implements $BuildingCopyWith<$Res> {
  factory _$BuildingCopyWith(_Building value, $Res Function(_Building) then) =
      __$BuildingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? numbersOfFloors,
      Location? location,
      String? designImageUrl,
      List<Point>? paths,
      DateTime? updatedAt,
      String? keywords});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$BuildingCopyWithImpl<$Res> extends _$BuildingCopyWithImpl<$Res>
    implements _$BuildingCopyWith<$Res> {
  __$BuildingCopyWithImpl(_Building _value, $Res Function(_Building) _then)
      : super(_value, (v) => _then(v as _Building));

  @override
  _Building get _value => super._value as _Building;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? numbersOfFloors = freezed,
    Object? location = freezed,
    Object? designImageUrl = freezed,
    Object? paths = freezed,
    Object? updatedAt = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_Building(
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
      numbersOfFloors: numbersOfFloors == freezed
          ? _value.numbersOfFloors
          : numbersOfFloors // ignore: cast_nullable_to_non_nullable
              as int?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      designImageUrl: designImageUrl == freezed
          ? _value.designImageUrl
          : designImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paths: paths == freezed
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<Point>?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      keywords: keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Building implements _Building {
  _$_Building(
      {this.id,
      this.name,
      this.description,
      this.numbersOfFloors,
      this.location,
      this.designImageUrl,
      this.paths,
      this.updatedAt,
      this.keywords});

  factory _$_Building.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildingFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? numbersOfFloors;
  @override
  final Location? location;
  @override
  final String? designImageUrl;
  @override
  final List<Point>? paths;
  @override
  final DateTime? updatedAt;
  @override
  final String? keywords;

  @override
  String toString() {
    return 'Building(id: $id, name: $name, description: $description, numbersOfFloors: $numbersOfFloors, location: $location, designImageUrl: $designImageUrl, paths: $paths, updatedAt: $updatedAt, keywords: $keywords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Building &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.numbersOfFloors, numbersOfFloors) ||
                const DeepCollectionEquality()
                    .equals(other.numbersOfFloors, numbersOfFloors)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.designImageUrl, designImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.designImageUrl, designImageUrl)) &&
            (identical(other.paths, paths) ||
                const DeepCollectionEquality().equals(other.paths, paths)) &&
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
      const DeepCollectionEquality().hash(numbersOfFloors) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(designImageUrl) ^
      const DeepCollectionEquality().hash(paths) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(keywords);

  @JsonKey(ignore: true)
  @override
  _$BuildingCopyWith<_Building> get copyWith =>
      __$BuildingCopyWithImpl<_Building>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildingToJson(this);
  }
}

abstract class _Building implements Building {
  factory _Building(
      {int? id,
      String? name,
      String? description,
      int? numbersOfFloors,
      Location? location,
      String? designImageUrl,
      List<Point>? paths,
      DateTime? updatedAt,
      String? keywords}) = _$_Building;

  factory _Building.fromJson(Map<String, dynamic> json) = _$_Building.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get numbersOfFloors => throw _privateConstructorUsedError;
  @override
  Location? get location => throw _privateConstructorUsedError;
  @override
  String? get designImageUrl => throw _privateConstructorUsedError;
  @override
  List<Point>? get paths => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  String? get keywords => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BuildingCopyWith<_Building> get copyWith =>
      throw _privateConstructorUsedError;
}
