import 'package:dio/dio.dart';
import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/models/direction_data/direction_data.dart';
import 'package:dtumaps/data/remote/app_dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'direction_data_source.g.dart';

final directionDataSourceProvider =
    Provider((ref) => DirectionDataSource(ref.read));

@RestApi()
abstract class DirectionDataSource {
  factory DirectionDataSource(Reader reader) =>
      _DirectionDataSource(reader(dioProvider));

  @POST("/direction/{userId}")
  Future<ApiResponse> getDirection(
    @Body() Map<String, dynamic> startAndEndLocation, {
    @Path("userId") required String userId,
  });
}
