import 'package:dtumaps/data/models/marker_data/marker_data.dart';
import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/repository/markers_repository.dart';
import 'package:dtumaps/data/repository/markers_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final markersViewModelProvider =
    ChangeNotifierProvider((ref) => MarkersViewModel(ref.read));

class MarkersViewModel extends ChangeNotifier {
  MarkersViewModel(this._reader);

  final Reader _reader;

  // Tham chiếu của lớp cha là MarkersRepository tham chiếu đến đối tượng của lớp con là MarkersRepositoryImpl
  late final MarkersRepository _repository =
      _reader(markersRepositoryProvider); // upcasting

  Result<MarkerData>? _markers;

  Result<MarkerData>? get markers => _markers;

  Future<void> fetchMarkers({required String id}) async {
    print("id: $id");
    await _repository
        .getMarkers(id: id)
        .then((value) {
          print("value: $value");
          return _markers = value;
        })
        .whenComplete(notifyListeners)
        .catchError((e) {
          print("ERROR: $e");
        });
  }
}
