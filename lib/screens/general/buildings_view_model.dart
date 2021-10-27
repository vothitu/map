import 'package:dtumaps/data/models/buildings_data/buildings_data.dart';
import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/repository/buildings_repository.dart';
import 'package:dtumaps/data/repository/buildings_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final buildingsViewModelProvider =
    ChangeNotifierProvider((ref) => BuildingsViewModel(ref.read));

class BuildingsViewModel extends ChangeNotifier {
  BuildingsViewModel(this._reader);

  final Reader _reader;

  // Tham chiếu của lớp cha là BuildingsRepository tham chiếu đến đối tượng của lớp con là BuildingsRepositoryImpl
  late final BuildingsRepository _repository =
      _reader(buildingsRepositoryProvider); // upcasting

  Result<BuildingsData>? _buildings;

  Result<BuildingsData>? get buildings => _buildings;

  Future<void> fetchBuildings() async {
    await _repository
        .getBuildings()
        .then((value) {
          return _buildings = value;
        })
        .whenComplete(notifyListeners)
        .catchError((e) {
          print("ERROR: $e");
        });
  }
}
