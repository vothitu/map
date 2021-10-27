import 'package:dtumaps/data/models/user_profile/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
abstract class UserData with _$UserData {
  factory UserData({
    UserProfile? profile,
    String? email,
    String? role,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
