import 'package:dtumaps/data/models/building/building.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'buildings_data.freezed.dart';
part 'buildings_data.g.dart';

@freezed
abstract class BuildingsData with _$BuildingsData {
  factory BuildingsData({
    List<Building>? buildings,
    int? total,
  }) = _BuildingsData;

  factory BuildingsData.fromJson(Map<String, dynamic> json) =>
      _$BuildingsDataFromJson(json);
}
