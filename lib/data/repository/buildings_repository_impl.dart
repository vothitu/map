import 'package:dtumaps/data/models/buildings_data/buildings_data.dart';
import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/remote/buildings_data_source/buildings_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'buildings_repository.dart';

final buildingsRepositoryProvider =
    Provider((ref) => BuildingsRepositoryImpl(ref.read));

class BuildingsRepositoryImpl implements BuildingsRepository {
  BuildingsRepositoryImpl(this._reader);

  final Reader _reader;

  late final BuildingsDataSource _dataSource =
      _reader(buildingsDataSourceProvider);

  @override
  Future<Result<BuildingsData>> getBuildings() {
    return Result.guardFuture(() async {
      final apiResponse = await _dataSource.getBuildings();
      return Future.value(BuildingsData.fromJson(apiResponse.data!));
    });
  }
}
