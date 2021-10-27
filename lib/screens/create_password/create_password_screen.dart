import 'package:flutter/material.dart';
import '../../constraint.dart';
import 'components/create_password_body.dart';

class CreatePasswordScreen extends StatelessWidget {
  static const String routeName = '/createPasswordScreen';

  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: CreatePasswordBody(),
    );
  }
}
