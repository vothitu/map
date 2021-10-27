import 'package:dio/dio.dart';
import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/models/user_data/user_data.dart';
import 'package:dtumaps/data/remote/app_dio.dart';
import 'package:dtumaps/data/remote/auth_data_source/auth_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authDataSourceProvider =
    Provider((ref) => AuthDataSourceImpl(ref.read(dioProvider)));

class AuthDataSourceImpl implements AuthDataSource {
  final Dio _dio;

  AuthDataSourceImpl(this._dio);

  @override
  Future<Map<String, dynamic>> signIn(
      {required String email, required String password}) async {
    final Map<String, dynamic> _data = {
      "username": email,
      "password": password,
    };
    final response = await _dio.request<Map<String, dynamic>>(
      "/user/auth/login",
      data: _data,
      options: Options(
        method: "POST",
        // Default responseType = ResponseType.json
      ),
    );
    final value = response.data!;

    return value;
  }

  @override
  Future<ApiResponse> signUp(
      {required UserData user, required String password}) async {
    final Map<String, dynamic> _data = {
      "email": user.email,
      "password": password,
      "firstName": user.profile!.firstName,
      "lastName": user.profile!.lastName,
    };
    final response = await _dio.request<Map<String, dynamic>>(
      "/user/register",
      data: _data,
      options: Options(
        method: "POST",
      ),
    );

    final value = ApiResponse.fromJson(response.data!);

    return value;
  }
}
