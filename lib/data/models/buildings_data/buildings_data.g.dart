// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buildings_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildingsData _$_$_BuildingsDataFromJson(Map<String, dynamic> json) {
  return _$_BuildingsData(
    buildings: (json['buildings'] as List<dynamic>?)
        ?.map((e) => Building.fromJson(e as Map<String, dynamic>))
        .toList(),
    total: json['total'] as int?,
  );
}

Map<String, dynamic> _$_$_BuildingsDataToJson(_$_BuildingsData instance) =>
    <String, dynamic>{
      'buildings': instance.buildings,
      'total': instance.total,
    };
