import 'package:dtumaps/widgets/app_text.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.only(left: 25),
          child: AppText(
            "Đăng Ký",
            fontSize: 30,
            color: Colors.black87,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
