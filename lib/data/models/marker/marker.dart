import 'package:dtumaps/data/models/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marker.freezed.dart';
part 'marker.g.dart';

@freezed
abstract class Marker with _$Marker {
  factory Marker({
    int? id,
    String? name,
    String? description,
    Location? location,
    String? type,
  }) = _Marker;

  factory Marker.fromJson(Map<String, dynamic> json) => _$MarkerFromJson(json);
}
