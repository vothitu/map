import 'package:dtumaps/widgets/app_text.dart';
import 'package:dtumaps/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../constraint.dart';

class DialogCheck extends StatelessWidget {
  final bool success;
  final String trueDescText, falseDescText;
  final VoidCallback pressed;

  const DialogCheck({
    Key? key,
    this.success = true,
    required this.trueDescText,
    required this.falseDescText,
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      text: "Xác nhận",
      //TODO 2: Show Dialog Successfully or Fail
      pressed: () {
        Alert(
          context: context,
          desc: success
              ? trueDescText /* "Cập nhật mật khẩu\n thành công!" */
              : falseDescText /* "Vui lòng kiểm tra lại\n mật khẩu!" */,
          style: AlertStyle(
            descStyle: TextStyle(
                color: kTextColorBlue.withOpacity(.7),
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: 'Roboto'),
          ),
          image: SvgPicture.asset('assets/SVG/Successfully.svg'),
          padding: EdgeInsets.symmetric(vertical: 10),
          buttons: [
            DialogButton(
              child: AppText(
                success ? "Đăng nhập lại" : "Thử lại".toUpperCase(),
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              onPressed: success ? pressed : pressed,
              color: kButtonColor,
              radius: BorderRadius.circular(30.0),
            ),
          ],
        ).show();
      },
    );
  }
}
