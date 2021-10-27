import 'package:dtumaps/data/models/direction_data/direction_data.dart';
import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/repository/direction_repository.dart';
import 'package:dtumaps/data/repository/direction_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roadViewModelProvider =
    ChangeNotifierProvider((ref) => DirectionViewModel(ref.read));

class DirectionViewModel extends ChangeNotifier {
  DirectionViewModel(this._reader);

  final Reader _reader;

  late final DirectionRepository _repository =
      _reader(directionRepositoryProvider); // upcasting

  Result<DirectionData>? _direction;

  Result<DirectionData>? get direction => _direction;

  Future<void> fetchDirection(
      {required String userId,
      required Map<String, dynamic> startAndEndLocation}) async {
    await _repository
        .getDirection(
          userId: userId,
          startAndEndLocation: startAndEndLocation,
        )
        .then((value) {
          return _direction = value;
        })
        .whenComplete(notifyListeners)
        .catchError((e) {
          print("ERROR(GetDirection): $e ");
        });
  }
}
