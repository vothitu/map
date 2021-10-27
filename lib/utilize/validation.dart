import 'package:dtumaps/utilize/regex.dart';

class Validation {
  static String? validateEmail(String value, String emailToCheckIsExist) {
    final validEmail = Regex.validEmail;

    if (!value.isNotEmpty) {
      return "Email required";
    } else {
      if (!validEmail.hasMatch(value)) {
        return "Invalid Email!";
      } else {
        if (value.contains(emailToCheckIsExist)) return "Email is exist";
      }
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (!value.isNotEmpty) {
      return "Password required";
    } else {
      if (value.length < 8) {
        return "The min length of password is 8!";
      }
    }
    return null;
  }

  static String? validateConfirmPassword(
      String value, String passwordToConfirm) {
    if (!value.isNotEmpty) {
      return "Confirm password required";
    } else {
      if (value != passwordToConfirm) {
        return "Password confirmation doesn't match!";
      }
    }
    return null;
  }
}
