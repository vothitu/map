import 'package:dtumaps/data/models/point/point.dart';
import 'package:dtumaps/data/models/text/text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'direction.freezed.dart';
part 'direction.g.dart';

@freezed
abstract class Direction with _$Direction {
  factory Direction({
    String? directionId,
    List<Point>? paths,
    List<Text>? texts,
  }) = _Direction;

  factory Direction.fromJson(Map<String, dynamic> json) =>
      _$DirectionFromJson(json);
}
