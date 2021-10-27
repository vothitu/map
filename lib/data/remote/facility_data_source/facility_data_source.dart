import 'package:dio/dio.dart';
import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/models/direction_data/direction_data.dart';
import 'package:dtumaps/data/remote/app_dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'facility_data_source.g.dart';

final facilityDataSourceProvider =
    Provider((ref) => FacilityDataSource(ref.read));

@RestApi()
abstract class FacilityDataSource {
  factory FacilityDataSource(Reader reader) =>
      _FacilityDataSource(reader(dioProvider));

  @GET("/facility")
  Future<ApiResponse> getFacility();
  @GET("/facility/{id}")
  Future<ApiResponse> getSpecificFacility({
    @Path("id") required String id,
  });
}
