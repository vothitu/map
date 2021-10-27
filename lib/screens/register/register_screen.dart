import 'package:dtumaps/constraint.dart';
import 'package:flutter/material.dart';

import 'components/body_register.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = '/registerScreen';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: Body(),
    );
  }
}
