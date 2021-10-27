import 'package:dtumaps/data/models/marker_data/marker_data.dart';
import 'package:dtumaps/data/models/result/result.dart';

abstract class MarkersRepository {
  Future<Result<MarkerData>> getMarkers({required String id});
}
