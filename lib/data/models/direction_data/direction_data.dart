import 'package:dtumaps/data/models/direction/direction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'direction_data.freezed.dart';
part 'direction_data.g.dart';

@freezed
abstract class DirectionData with _$DirectionData {
  factory DirectionData({
    Direction? directions,
  }) = _DirectionData;

  @override
  factory DirectionData.fromJson(Map<String, dynamic> json) =>
      _$DirectionDataFromJson(json);
}
