import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

import '../../../constraint.dart';

class OtpForm extends StatefulWidget {
  OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return Form(
      child: Container(
        height: size.height * 0.058,
        width: size.width * 0.85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 60,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: kTextColorDark,
                ),
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //also need to store value
                  nextField(value, pin2FocusNode);
                },
                decoration: otpInputDecoration,
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: kTextColorDark,
                ),
                focusNode: pin2FocusNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  nextField(value, pin3FocusNode);
                },
                decoration: otpInputDecoration,
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: kTextColorDark,
                ),
                focusNode: pin3FocusNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  nextField(value, pin4FocusNode);
                },
                decoration: otpInputDecoration,
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: kTextColorDark,
                ),
                focusNode: pin4FocusNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  pin4FocusNode.unfocus();
                },
                decoration: otpInputDecoration,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
