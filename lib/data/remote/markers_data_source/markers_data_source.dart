import 'package:dio/dio.dart';
import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/remote/app_dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:retrofit/retrofit.dart'; // ho tro Dio

part 'markers_data_source.g.dart';

final markersDataSourceProvider =
    Provider((ref) => MarkersDataSource(ref.read));

@RestApi()
abstract class MarkersDataSource {
  factory MarkersDataSource(Reader reader) =>
      _MarkersDataSource(reader(dioProvider));

  @GET("/marker/facility/{id}")
  Future<ApiResponse> getMarkers({@Path("id") required String id});
}
