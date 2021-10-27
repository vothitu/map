import 'package:dtumaps/data/local/app_user.dart';
import 'package:dtumaps/data/models/api_response/api_response.dart';
import 'package:dtumaps/data/models/user_data/user_data.dart';
import 'package:dtumaps/data/repository/auth_repository.dart';
import 'package:dtumaps/data/repository/auth_repository_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userViewModelProvider =
    ChangeNotifierProvider((ref) => UserViewModel(ref.read));

class UserViewModel extends ChangeNotifier {
  UserViewModel(this._reader);

  final Reader _reader;

  late final AuthRepository _repository = _reader(authRepositoryProvider);

  ApiResponse? _user;

  ApiResponse? get user => _user;

  bool? _isAuthenticated = false;

  bool? get isAuthenticated {
    return _isAuthenticated! && _user!.data!["user"] != null;
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await _repository.signIn(email: email, password: password).then((result) {
      // Result use case No.2
      result.ifSuccess((data) {
        // _user = data;
        _isAuthenticated = !_isAuthenticated!;
        notifyListeners();
      });
    });
  }

  Future<void> signUp({
    required UserData user,
    required String password,
  }) async {
    await _repository.signUp(user: user, password: password).then((result) {
      result.ifSuccess((data) {
        _user = data;
        _isAuthenticated = !_isAuthenticated!;
        notifyListeners();
      });
    });
  }

  Future<void> signOut() {
    return _repository.signOut().then((result) {
      return result.when(
        success: (_) {
          _user = null;
          print("signed out");
          _isAuthenticated = !_isAuthenticated!;
          notifyListeners();
        },
        failure: (_) => result,
      );
    });
  }
}
