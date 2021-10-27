import 'package:dtumaps/screens/login/components/login_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/loginScreen';

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0XFFF8F8FA),
        body: Container(
          child: LoginBody(),
        ),
      );
}
