// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Marker _$_$_MarkerFromJson(Map<String, dynamic> json) {
  return _$_Marker(
    id: json['id'] as int?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$_$_MarkerToJson(_$_Marker instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'type': instance.type,
    };
