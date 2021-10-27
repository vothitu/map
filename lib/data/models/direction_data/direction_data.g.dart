// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DirectionData _$_$_DirectionDataFromJson(Map<String, dynamic> json) {
  return _$_DirectionData(
    directions: json['directions'] == null
        ? null
        : Direction.fromJson(json['directions'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DirectionDataToJson(_$_DirectionData instance) =>
    <String, dynamic>{
      'directions': instance.directions,
    };
