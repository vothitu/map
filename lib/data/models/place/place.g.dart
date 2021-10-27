// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$_$_PlaceFromJson(Map<String, dynamic> json) {
  return _$_Place(
    id: json['id'] as int?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    numberOfPlace: json['numberOfPlace'] as int?,
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    address: json['address'] as String?,
  );
}

Map<String, dynamic> _$_$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'numberOfPlace': instance.numberOfPlace,
      'location': instance.location,
      'address': instance.address,
    };
