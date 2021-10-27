import 'package:dtumaps/data/models/marker/marker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marker_data.freezed.dart';
part 'marker_data.g.dart';

@freezed
abstract class MarkerData with _$MarkerData {
  factory MarkerData({
    List<Marker>? markers,
  }) = _MarkerData;

  factory MarkerData.fromJson(Map<String, dynamic> json) =>
      _$MarkerDataFromJson(json);
}
