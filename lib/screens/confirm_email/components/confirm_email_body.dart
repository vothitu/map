import 'dart:ui';
import 'package:dtumaps/screens/routes/routes.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:dtumaps/widgets/rounded_button.dart';
import 'package:dtumaps/widgets/template_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../widgets/title.dart';
import 'otp_form.dart';
import 'widgets/already_have_OTP_check.dart';
import 'widgets/body_text.dart';
import 'widgets/timer.dart';

class ConfirmBody extends StatelessWidget {
  const ConfirmBody({
    Key? key,
  }) : super(key: key);

  get success => true;

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: TemplateBackground(
        pressed: () {
          Navigator.restorablePopAndPushNamed(context, Routes.forgotPassword);
        },
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.18),
            SvgPicture.asset(
              'assets/SVG/MailBox.svg',
              height: size.height * 0.25,
              allowDrawingOutsideViewBox: true,
            ),
            SizedBox(height: size.height * 0.03),
            TitleText(
              titleText: "Xác minh email của bạn",
            ),
            SizedBox(height: size.height * 0.01),
            BodyText(),
            SizedBox(height: size.height * 0.07),
            OtpForm(),
            SizedBox(height: size.height * 0.03),
            BuildTimer(),
            SizedBox(height: size.height * 0.07),
            RoundedButton(
              text: "Gửi".toUpperCase(),
              //TODO3: Event handling when one screen has multiple shared screen
              pressed: () {
                Navigator.pushNamed(context, Routes.createPassword);
                /*  Routes.confirmEmail != ConfirmEmailScreen.routeName
                    ? Navigator.pop(context)
                    : Navigator.pushReplacementNamed(
                        context, Routes.createPassword); */
              },
            ),
            SizedBox(height: size.height * 0.015),
            AlreadyHaveOTPCheck(),
          ],
        ),
      ),
    );
  }
}
