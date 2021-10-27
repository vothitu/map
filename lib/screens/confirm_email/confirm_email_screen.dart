import 'package:dtumaps/constraint.dart';
import 'package:dtumaps/screens/confirm_email/components/confirm_email_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfirmEmailScreen extends StatelessWidget {
  const ConfirmEmailScreen({Key? key}) : super(key: key);

  static const String routeName = '/confirmEmailScreen';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: ConfirmBody(),
    );
  }
}
