import 'package:dtumaps/data/models/buildings_data/buildings_data.dart';
import 'package:dtumaps/data/models/result/result.dart';

abstract class BuildingsRepository {
  Future<Result<BuildingsData>> getBuildings();
}
