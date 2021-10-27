// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Building _$_$_BuildingFromJson(Map<String, dynamic> json) {
  return _$_Building(
    id: json['id'] as int?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    numbersOfFloors: json['numbersOfFloors'] as int?,
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    designImageUrl: json['designImageUrl'] as String?,
    paths: (json['paths'] as List<dynamic>?)
        ?.map((e) => Point.fromJson(e as Map<String, dynamic>))
        .toList(),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    keywords: json['keywords'] as String?,
  );
}

Map<String, dynamic> _$_$_BuildingToJson(_$_Building instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'numbersOfFloors': instance.numbersOfFloors,
      'location': instance.location,
      'designImageUrl': instance.designImageUrl,
      'paths': instance.paths,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'keywords': instance.keywords,
    };
