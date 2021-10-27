// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Direction _$_$_DirectionFromJson(Map<String, dynamic> json) {
  return _$_Direction(
    directionId: json['directionId'] as String?,
    paths: (json['paths'] as List<dynamic>?)
        ?.map((e) => Point.fromJson(e as Map<String, dynamic>))
        .toList(),
    texts: (json['texts'] as List<dynamic>?)
        ?.map((e) => Text.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_DirectionToJson(_$_Direction instance) =>
    <String, dynamic>{
      'directionId': instance.directionId,
      'paths': instance.paths,
      'texts': instance.texts,
    };
