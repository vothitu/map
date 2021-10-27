// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Facility _$_$_FacilityFromJson(Map<String, dynamic> json) {
  return _$_Facility(
    id: json['id'] as int?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    numberOfFacility: json['numberOfFacility'] as int?,
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    address: json['address'] as String?,
    designImageUrl: json['designImageUrl'] as String?,
    backgroundImageUrl: json['backgroundImageUrl'] as String?,
    updatedAt: json['updatedAt'] as String?,
    keywords: json['keywords'] as String?,
  );
}

Map<String, dynamic> _$_$_FacilityToJson(_$_Facility instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'numberOfFacility': instance.numberOfFacility,
      'location': instance.location,
      'address': instance.address,
      'designImageUrl': instance.designImageUrl,
      'backgroundImageUrl': instance.backgroundImageUrl,
      'updatedAt': instance.updatedAt,
      'keywords': instance.keywords,
    };
