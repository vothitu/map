import 'package:dtumaps/data/models/facility/facility.dart';
import 'package:dtumaps/data/models/facility_data/facility_data.dart';
import 'package:dtumaps/data/models/result/result.dart';

abstract class FacilityRepository {
  Future<Result<FacilityData>> getFacility();
  Future<Result<Facility>> getSpecificFacility({required String id});
}
