import 'package:dio/dio.dart';
import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/remote/app_dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'search_data_source.g.dart';

final searchDataSourceProvider = Provider((ref) => SearchDataSource(ref.read));

@RestApi()
abstract class SearchDataSource {
  factory SearchDataSource(Reader reader) =>
      _SearchDataSource(reader(dioProvider));

  @GET("/search/{text}")
  Future<ApiResponse> getSearch({@Path("text") required String text});
}
