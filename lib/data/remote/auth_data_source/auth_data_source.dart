import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/models/user_data/user_data.dart';

abstract class AuthDataSource {
  Future<Map<String, dynamic>> signIn({
    required String email,
    required String password,
  });

  Future<ApiResponse> signUp({
    required UserData user,
    required String password,
  });
}
