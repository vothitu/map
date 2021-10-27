// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Search _$_$_SearchFromJson(Map<String, dynamic> json) {
  return _$_Search(
    building: (json['building'] as List<dynamic>?)
        ?.map((e) => Building.fromJson(e as Map<String, dynamic>))
        .toList(),
    facility: (json['facility'] as List<dynamic>?)
        ?.map((e) => Facility.fromJson(e as Map<String, dynamic>))
        .toList(),
    place: (json['place'] as List<dynamic>?)
        ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SearchToJson(_$_Search instance) => <String, dynamic>{
      'building': instance.building,
      'facility': instance.facility,
      'place': instance.place,
    };
