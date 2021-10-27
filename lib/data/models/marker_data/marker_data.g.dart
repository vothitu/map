// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarkerData _$_$_MarkerDataFromJson(Map<String, dynamic> json) {
  return _$_MarkerData(
    markers: (json['markers'] as List<dynamic>?)
        ?.map((e) => Marker.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MarkerDataToJson(_$_MarkerData instance) =>
    <String, dynamic>{
      'markers': instance.markers,
    };
