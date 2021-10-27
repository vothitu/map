import 'package:flutter/material.dart';

import '../../../../constraint.dart';

class AlreadyHaveOTPCheck extends StatelessWidget {
  const AlreadyHaveOTPCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Không nhận được OTP ? ",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        GestureDetector(
          //TODO 2: Resent OTP into user email
          onTap: () {},
          child: Text(
            "Gửi lại OTP",
            style: TextStyle(
                color: kTextColorBlue,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'),
          ),
        ),
      ],
    );
  }
}
