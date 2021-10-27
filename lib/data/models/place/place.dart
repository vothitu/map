import 'package:dtumaps/data/models/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
abstract class Place with _$Place {
  factory Place({
    int? id,
    String? name,
    String? description,
    int? numberOfPlace,
    Location? location,
    String? address,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
