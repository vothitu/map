import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String? data;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final double? height;
  final TextAlign? textAlign;
  final Paint? foreground;

  const AppText(
    this.data, {
    Key? key,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.height,
    this.textAlign,
    this.foreground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.data!,
      style: TextStyle(
        fontWeight: this.fontWeight,
        fontSize: this.fontSize,
        color: this.color,
      ),
      textAlign: textAlign,
    );
  }
}
