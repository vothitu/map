import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/models/direction_data/direction_data.dart';
import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/remote/direction_data_source/direction_data_source.dart';
import 'package:dtumaps/data/repository/direction_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final directionRepositoryProvider =
    Provider((ref) => DirectionRepositoryImpl(ref.read));

class DirectionRepositoryImpl implements DirectionRepository {
  DirectionRepositoryImpl(this._reader);

  final Reader _reader;

  late final DirectionDataSource _dataSource =
      _reader(directionDataSourceProvider);

  @override
  Future<Result<DirectionData>> getDirection(
      {required String userId,
      required Map<String, dynamic> startAndEndLocation}) {
    return Result.guardFuture(() async {
      final apiResponse = await _dataSource.getDirection(
        startAndEndLocation,
        userId: userId,
      );
      return Future.value(DirectionData.fromJson(apiResponse.data!));
    });
  }
}
