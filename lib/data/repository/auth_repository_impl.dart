import 'package:dtumaps/data/models/api_response/api_response.dart';

import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/models/user_data/user_data.dart';
import 'package:dtumaps/data/remote/auth_data_source/auth_data_source.dart';
import 'package:dtumaps/data/remote/auth_data_source/auth_data_source_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth_repository.dart';

final authRepositoryProvider = Provider((ref) => AuthRepositoryImpl(ref.read));

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._reader);

  late final Reader _reader;

  late final AuthDataSource _dataSource = _reader(authDataSourceProvider);
  @override
  Future<Result<void>> signIn({
    required String email,
    required String password,
  }) async {
    return Result.guardFuture(() async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      final response =
          await _dataSource.signIn(email: email, password: password);

      await sharedPreferences.setString("token", response["access_token"]);

      return Future.value();
    });
  }

  @override
  Future<Result<ApiResponse>> signUp({
    required UserData user,
    required String password,
  }) {
    return Result.guardFuture(() async {
      final response = await _dataSource.signUp(
        user: user,
        password: password,
      );

      await signIn(email: user.email!, password: password);

      return Future.value(response);
    });
  }

  @override
  Future<Result<void>> signOut() async {
    return Result.guardFuture(() async {
      final SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();
      await _sharedPreferences.remove("token");
      return Future.value();
    });
  }
}
