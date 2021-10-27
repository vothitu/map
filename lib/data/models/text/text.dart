import 'package:freezed_annotation/freezed_annotation.dart';

part 'text.freezed.dart';
part 'text.g.dart';

@freezed
abstract class Text with _$Text {
  factory Text({
    String? text,
    double? distance,
    String? accurrency,
    String? turn,
  }) = _Text;

  factory Text.fromJson(Map<String, dynamic> json) => _$TextFromJson(json);
}
