import 'package:dio/dio.dart';
import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/remote/app_dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'buildings_data_source.g.dart';

final buildingsDataSourceProvider =
    Provider((ref) => BuildingsDataSource(ref.read));

@RestApi()
abstract class BuildingsDataSource {
  factory BuildingsDataSource(Reader reader) =>
      _BuildingsDataSource(reader(dioProvider));

  @GET("/building")
  Future<ApiResponse> getBuildings();
}
