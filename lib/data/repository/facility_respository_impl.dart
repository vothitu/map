import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/models/direction_data/direction_data.dart';
import 'package:dtumaps/data/models/facility/facility.dart';
import 'package:dtumaps/data/models/facility_data/facility_data.dart';
import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/remote/direction_data_source/direction_data_source.dart';
import 'package:dtumaps/data/remote/facility_data_source/facility_data_source.dart';
import 'package:dtumaps/data/repository/direction_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'facility_respository.dart';

final facilityRepositoryProvider =
    Provider((ref) => FacilityRepositoryImpl(ref.read));

class FacilityRepositoryImpl implements FacilityRepository {
  FacilityRepositoryImpl(this._reader);

  final Reader _reader;

  late final FacilityDataSource _dataSource =
      _reader(facilityDataSourceProvider);

  @override
  Future<Result<FacilityData>> getFacility() {
    return Result.guardFuture(() async {
      final apiResponse = await _dataSource.getFacility();
      return Future.value(FacilityData.fromJson(apiResponse.data!));
    });
  }

  @override
  Future<Result<Facility>> getSpecificFacility({required String id}) {
    return Result.guardFuture(() async {
      final apiResponse = await _dataSource.getSpecificFacility(id: id);
      return Future.value(Facility.fromJson(apiResponse.data!));
    });
  }
}
