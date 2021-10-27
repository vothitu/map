import 'package:dtumaps/screens/forgot_password/components/forgot_password_body.dart';
import 'package:flutter/material.dart';

import '../../constraint.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String routeName = '/forgotPasswordScreen';

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: ForgotPasswordBody(),
    );
  }
}
