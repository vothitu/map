import 'package:dtumaps/screens/change_password/change_password_screen.dart';
import 'package:dtumaps/screens/choose_location/choose_location_screen.dart';
import 'package:dtumaps/screens/confirm_email/confirm_email_screen.dart';
import 'package:dtumaps/screens/create_password/create_password_screen.dart';
import 'package:dtumaps/screens/detail_facility/facility_screen.dart';
import 'package:dtumaps/screens/feedback/feedback_screen.dart';
import 'package:dtumaps/screens/forgot_password/forgot_password_screen.dart';
import 'package:dtumaps/screens/friends/friends_screen.dart';
import 'package:dtumaps/screens/home/home_screen.dart';
import 'package:dtumaps/screens/login/login_screen.dart';
import 'package:dtumaps/screens/maps/maps_screen.dart';
import 'package:dtumaps/screens/onboarding/onboarding_screen.dart';
import 'package:dtumaps/screens/register/register_screen.dart';
import 'package:dtumaps/screens/settings/setting_screen.dart';
import 'package:dtumaps/screens/user/user_screen.dart';
import 'package:dtumaps/screens/vr360/vr360_screen.dart';
import 'package:flutter/material.dart';
import 'package:dtumaps/main.dart';

class Routes {
  static const String home = HomeScreen.routeName;
  static const String map = MapsScreen.routeName;
  static const String vr360 = VR360.routeName;
  static const String friend = FriendScreen.routeName;
  static const String settings = SettingScreen.routeName;
  static const String user = UserScreen.routeName;
  static const String confirmEmail = ConfirmEmailScreen.routeName;
  static const String login = LoginScreen.routeName;
  static const String register = RegisterScreen.routeName;
  static const String feedback = FeedbackScreen.routeName;
  static const String choose_location = ChooseLocation.routeName;
  static const String forgotPassword = ForgotPasswordScreen.routeName;
  static const String createPassword = CreatePasswordScreen.routeName;
  static const String onboardingScreen = OnboardingScreen.routeName;
  static const String facility = FacilityScreen.routeName;
  static const String changePassword = ChangePassword.routeName;

  static Map<String, Widget Function(BuildContext)> routes() {
    return {
      Routes.home: (context) => HomeScreen(),
      Routes.map: (context) => MapsScreen(),
      Routes.vr360: (context) => VR360(),
      Routes.friend: (context) => FriendScreen(),
      Routes.settings: (context) => SettingScreen(),
      Routes.login: (context) => LoginScreen(),
      Routes.register: (context) => RegisterScreen(),
      Routes.confirmEmail: (context) => ConfirmEmailScreen(),
      Routes.feedback: (context) => FeedbackScreen(),
      Routes.forgotPassword: (context) => ForgotPasswordScreen(),
      Routes.createPassword: (context) => CreatePasswordScreen(),
      Routes.choose_location: (context) => ChooseLocation(),
      Routes.onboardingScreen: (context) => OnboardingScreen(),
      Routes.facility: (context) => FacilityScreen(),
      Routes.changePassword: (context) => ChangePassword()
    };
  }

  static Route<dynamic>? Function(RouteSettings)? onGenerateRoute() {
    return (routeSettings) {
      switch (routeSettings.name) {
        case '/':
          return MaterialPageRoute(builder: (_) {
            print("isAuthenticated: $isAuthenticated");
            return isAuthenticated ? HomeScreen() : LoginScreen();
          });
        case Routes.home:
          return MaterialPageRoute(
            builder: (context) => HomeScreen(),
          );
        case Routes.login:
          return MaterialPageRoute(
            builder: (context) => LoginScreen(),
          );
        case Routes.user:
          return MaterialPageRoute(
            builder: (context) => UserScreen(),
          );
      }
    };
  }
}
