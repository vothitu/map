import 'package:dtumaps/data/models/marker_data/marker_data.dart';
import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/models/search/search.dart';
import 'package:dtumaps/data/remote/search_data_source/search_data_source.dart';
import 'package:dtumaps/data/repository/search_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchRepositoryProvider =
    Provider((ref) => SearchRepositoryImpl(ref.read));

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._reader);

  final Reader _reader;

  late final SearchDataSource _dataSource = _reader(searchDataSourceProvider);

  @override
  Future<Result<Search>> getSearchResult({required String text}) {
    return Result.guardFuture(
      () async {
        final response = await _dataSource.getSearch(text: text);

        final value = Search.fromJson(response.data!["searches"]);
        return Future.value(value);
      },
    );
  }
}
