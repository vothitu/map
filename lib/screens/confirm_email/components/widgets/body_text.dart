import 'package:flutter/material.dart';

import '../../../../constraint.dart';

class BodyText extends StatelessWidget {
  const BodyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-.70, 0),
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'Vui lòng nhập mã 4 chữ số được gửi\nđến ',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            TextSpan(
              text: 'example@gmail.com',
              style: TextStyle(
                color: kTextColorBlue,
                fontSize: 14,
                fontWeight: FontWeight.w900,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
