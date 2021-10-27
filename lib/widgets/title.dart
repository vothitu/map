import 'package:flutter/material.dart';

import '../constraint.dart';

class TitleText extends StatelessWidget {
  final String titleText;

  const TitleText({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-.6, 0),
      child: Text(
        titleText.toUpperCase(),
        style: TextStyle(
            color: kTextColorDark,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
      ),
    );
  }
}
