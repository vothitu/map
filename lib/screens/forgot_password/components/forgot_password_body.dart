import 'package:dtumaps/screens/routes/routes.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:dtumaps/widgets/body_text.dart';
import 'package:dtumaps/widgets/rounded_button.dart';
import 'package:dtumaps/widgets/template_background.dart';
import 'package:dtumaps/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/forgot_password_form.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: TemplateBackground(
        pressed: () {
          Navigator.restorablePopAndPushNamed(context, Routes.login);
        },
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.18),
            SvgPicture.asset(
              'assets/SVG/Mail.svg',
              height: size.height * 0.25,
              allowDrawingOutsideViewBox: true,
            ),
            SizedBox(height: size.height * 0.03),
            TitleText(titleText: "Bạn quên mật khẩu ?"),
            SizedBox(height: size.height * 0.01),
            BodyText(
              bodyText:
                  'Vui lòng nhập tài khoản email đã đăng\nký vào bên dưới để đặt lại mật khẩu !',
            ),
            SizedBox(height: size.height * 0.07),
            ForgotPassForm(),
            SizedBox(height: size.height * 0.1),
            RoundedButton(
              text: 'Gửi',
              pressed: () {
                Navigator.pushNamed(context, Routes.confirmEmail);
              },
            ),
          ],
        ),
      ),
    );
  }
}
