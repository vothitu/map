// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FacilityData _$_$_FacilityDataFromJson(Map<String, dynamic> json) {
  return _$_FacilityData(
    facilities: (json['facilities'] as List<dynamic>?)
        ?.map((e) => Facility.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_FacilityDataToJson(_$_FacilityData instance) =>
    <String, dynamic>{
      'facilities': instance.facilities,
    };
