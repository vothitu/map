import 'package:dtumaps/data/models/location/location.dart';
import 'package:dtumaps/data/models/point/point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'building.freezed.dart';
part 'building.g.dart';

@freezed
abstract class Building with _$Building {
  factory Building({
    int? id,
    String? name,
    String? description,
    int? numbersOfFloors,
    Location? location,
    String? designImageUrl,
    List<Point>? paths,
    DateTime? updatedAt,
    String? keywords,
  }) = _Building;

  factory Building.fromJson(Map<String, dynamic> json) =>
      _$BuildingFromJson(json);
}
