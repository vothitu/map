import 'package:dtumaps/data/models/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'facility.freezed.dart';
part 'facility.g.dart';

@freezed
abstract class Facility with _$Facility {
  factory Facility({
    int? id,
    String? name,
    String? description,
    int? numberOfFacility,
    Location? location,
    String? address,
    String? designImageUrl,
    String? backgroundImageUrl,
    String? updatedAt,
    String? keywords,
  }) = _Facility;

  factory Facility.fromJson(Map<String, dynamic> json) =>
      _$FacilityFromJson(json);
}
