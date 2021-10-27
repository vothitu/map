import 'package:flutter/material.dart';

import '../constraint.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback pressed;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Bạn đã có tài khoản ? " : "Bạn chưa có tài khoản ? ",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
            fontWeight: FontWeight.normal,
            fontFamily: 'Roboto',
          ),
        ),
        GestureDetector(
          onTap: pressed,
          child: Text(login ? "Đăng Nhập" : "Đăng Ký",
              style: TextStyle(
                  color: kButtonColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins')),
        ),
      ],
    );
  }
}
