import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/models/search/search.dart';
import 'package:dtumaps/data/repository/search_repository.dart';
import 'package:dtumaps/data/repository/search_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchViewModelProvider =
    ChangeNotifierProvider((ref) => SearchViewModel(ref.read));

class SearchViewModel extends ChangeNotifier {
  SearchViewModel(this._reader);

  final Reader _reader;

  // Tham chiếu của lớp cha là SearchRepository tham chiếu đến đối tượng của lớp con là SearchRepositoryImpl
  late final SearchRepository _repository =
      _reader(searchRepositoryProvider); // upcasting

  Result<Search>? _search;

  Result<Search>? get search => _search;

  Future<void> fetchSearch({required String value}) async {
    await _repository
        .getSearchResult(text: value)
        .then((value) {
          return _search = value;
        })
        .whenComplete(notifyListeners)
        .catchError((e) {
          print("ERROR: $e");
        });
  }
}
