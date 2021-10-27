// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Text _$_$_TextFromJson(Map<String, dynamic> json) {
  return _$_Text(
    text: json['text'] as String?,
    distance: (json['distance'] as num?)?.toDouble(),
    accurrency: json['accurrency'] as String?,
    turn: json['turn'] as String?,
  );
}

Map<String, dynamic> _$_$_TextToJson(_$_Text instance) => <String, dynamic>{
      'text': instance.text,
      'distance': instance.distance,
      'accurrency': instance.accurrency,
      'turn': instance.turn,
    };
