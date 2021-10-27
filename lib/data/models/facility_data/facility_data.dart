import 'package:dtumaps/data/models/direction/direction.dart';
import 'package:dtumaps/data/models/facility/facility.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'facility_data.freezed.dart';
part 'facility_data.g.dart';

@freezed
abstract class FacilityData with _$FacilityData {
  factory FacilityData({
    List<Facility>? facilities,
  }) = _FacilityData;

  @override
  factory FacilityData.fromJson(Map<String, dynamic> json) =>
      _$FacilityDataFromJson(json);
}
