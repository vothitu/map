import 'package:flutter/material.dart';

//Colors that we use in our application
const kButtonColor = Color(0xFFF55349);
const kBackgroundColor = Color(0xFFCDE8F9);
const kTextColorWhite = Color(0xFFEEF2F6);
const kTextColor = Color(0xFF757575);
const kTextColorDark = Color(0xFF11183F);
const kTextColorBlue = Color(0xFF2F80ED);
const kScaffoldBgColor = Color(0xFFF8F8FA);
const kSecondaryColor = Color(0xFF979797);
const kPrimaryColor = Color(0xFFFF7643);
const kPageTitle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white);
const kBodyText = TextStyle(
    fontSize: 14, fontWeight: FontWeight.normal, color: Color(0xFFD6D6D6));
const kMenuTitle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);
const kSecondaryText = TextStyle(
    fontSize: 14, fontWeight: FontWeight.normal, color: Color(0xFFD6D6D6));
const double kDefaultPadding = 20.0;
const double kDefaultMargin = 10.0;

const defaultDuration = Duration(milliseconds: 250);

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(horizontal: 20),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: BorderSide(color: Colors.black, width: 1.5),
  ),
  border: OutlineInputBorder(),
);
