import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/models/user_data/user_data.dart';

abstract class AuthRepository {
  Future<Result<void>> signIn({
    required String email,
    required String password,
  });

  Future<Result<ApiResponse>> signUp({
    required UserData user,
    required String password,
  });

  Future<Result<void>> signOut();
}
