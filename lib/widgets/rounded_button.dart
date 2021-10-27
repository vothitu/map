import 'package:flutter/material.dart';

import '../constraint.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback pressed;
  final Color color, textcolor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.pressed,
    this.color = kButtonColor,
    this.textcolor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        // ignore: deprecated_member_use
        child: FlatButton(
          height: 52,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 35,
          ),
          color: kButtonColor,
          onPressed: pressed,
          child: Text(
            "$text".toUpperCase(),
            style: TextStyle(
                color: textcolor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Roboto'),
          ),
        ),
      ),
    );
  }
}
