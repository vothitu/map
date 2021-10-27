import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/models/search/search.dart';

abstract class SearchRepository {
  Future<Result<Search>> getSearchResult({required String text});
}
