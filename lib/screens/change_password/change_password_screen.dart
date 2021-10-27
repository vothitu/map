import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/body.dart';

class ChangePassword extends StatelessWidget {
  static const String routeName = "/change_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      reverse: true,
      child: Column(children: [
        Container(
            child: AppBarCustom(
          screen: 'Đổi mật khẩu',
        )),
        Body(),
      ]),
    ));
  }
}
