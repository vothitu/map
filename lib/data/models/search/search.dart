import 'package:dtumaps/data/models/building/building.dart';
import 'package:dtumaps/data/models/facility/facility.dart';
import 'package:dtumaps/data/models/place/place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
abstract class Search with _$Search {
  factory Search({
    List<Building>? building,
    List<Facility>? facility,
    List<Place>? place,
  }) = _Search;

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}
