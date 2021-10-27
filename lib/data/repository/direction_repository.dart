import 'package:dtumaps/data/models/direction_data/direction_data.dart';
import 'package:dtumaps/data/models/result/result.dart';

abstract class DirectionRepository {
  Future<Result<DirectionData>> getDirection(
      {required String userId,
      required Map<String, dynamic> startAndEndLocation});
}
