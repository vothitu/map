import 'package:dtumaps/screens/routes/routes.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:dtumaps/widgets/app_text.dart';
import 'package:dtumaps/widgets/body_text.dart';
import 'package:dtumaps/widgets/template_background.dart';
import 'package:dtumaps/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constraint.dart';
import '../../../widgets/dialog_check.dart';
import 'widgets/newpassword_input.dart';

class CreatePasswordBody extends StatelessWidget {
  const CreatePasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: TemplateBackground(
        pressed: () {
          Navigator.restorablePopAndPushNamed(context, Routes.confirmEmail);
        },
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.18),
            SvgPicture.asset(
              'assets/SVG/MyPassword.svg',
              height: size.height * 0.25,
              allowDrawingOutsideViewBox: true,
            ),
            SizedBox(height: size.height * 0.03),
            TitleText(
              titleText: "Tạo mật khẩu mới",
            ),
            SizedBox(height: size.height * 0.01),
            BodyText(
              bodyText:
                  "Mật khẩu mới của bạn phải khác với\nmật khẩu đã sử dụng trước đó!",
            ),
            SizedBox(height: size.height * 0.03),
            Align(
              alignment: Alignment(-.78, 0),
              child: AppText(
                "Mật khẩu",
                color: kTextColorDark,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            NewPasswordInput(),
            SizedBox(height: size.height * 0.02),
            Align(
              alignment: Alignment(-.75, 0),
              child: AppText(
                "Nhập lại mật khẩu",
                color: kTextColorDark,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            NewPasswordInput(),
            SizedBox(height: size.height * 0.06),
            DialogCheck(
              success: true,
              trueDescText: "Cập nhật mật khẩu\n thành công!",
              falseDescText: "Vui lòng kiểm tra lại\n mật khẩu!",
              //
              pressed: () {
                Navigator.popAndPushNamed(context, Routes.login);
              },
              /* pressed: () {
                success
                    ? Navigator.popAndPushNamed(context, Routes.login)
                    : Navigator.pop(context);
              }, */
            ),
          ],
        ),
      ),
    );
  }
}
