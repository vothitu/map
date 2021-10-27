import 'package:dtumaps/data/models/facility/facility.dart';
import 'package:dtumaps/data/models/facility_data/facility_data.dart';
import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/models/search/search.dart';
import 'package:dtumaps/data/repository/facility_respository.dart';
import 'package:dtumaps/data/repository/facility_respository_impl.dart';
import 'package:dtumaps/data/repository/search_repository.dart';
import 'package:dtumaps/data/repository/search_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final facilityViewModelProvider =
    ChangeNotifierProvider((ref) => FacilityViewModel(ref.read));

class FacilityViewModel extends ChangeNotifier {
  FacilityViewModel(this._reader);

  final Reader _reader;

  // Tham chiếu của lớp cha là FacilityRepository tham chiếu đến đối tượng của lớp con là FacilityRepositoryImpl
  late final FacilityRepository _repository =
      _reader(facilityRepositoryProvider); // upcasting
  Result<FacilityData>? _facilities;

  Result<FacilityData>? get facilities => _facilities;

  Result<Facility>? _facility;

  Result<Facility>? get facility => _facility;

  Future<void> fetchFacility() async {
    await _repository
        .getFacility()
        .then((value) {
          return _facilities = value;
        })
        .whenComplete(notifyListeners)
        .catchError((e) {
          print("ERROR: $e");
        });
  }

  Future<void> fetchSpecificFacility({required String id}) async {
    await _repository
        .getSpecificFacility(id: id)
        .then((value) {
          return _facility = value;
        })
        .whenComplete(notifyListeners)
        .catchError((e) {
          print("ERROR: $e");
        });
  }
}
