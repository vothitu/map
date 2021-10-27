import 'package:dtumaps/data/models/marker_data/marker_data.dart';
import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/remote/markers_data_source/markers_data_source.dart';
import 'package:dtumaps/data/repository/markers_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final markersRepositoryProvider =
    Provider((ref) => MarkersRepositoryImpl(ref.read));

class MarkersRepositoryImpl implements MarkersRepository {
  MarkersRepositoryImpl(this._reader);

  final Reader _reader;
  late final MarkersDataSource _dataSource = _reader(markersDataSourceProvider);

  @override
  Future<Result<MarkerData>> getMarkers({required String id}) {
    return Result.guardFuture(
      () async {
        final response = await _dataSource.getMarkers(id: id);

        final value = MarkerData.fromJson(response.data!);
        return Future.value(value);
      },
    );
  }
}
