import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

import '../constraint.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const InputField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return Container(
      width: size.width * 0.9,
      child: TextFormField(
        style: TextStyle(
          fontSize: 16,
          color: kTextColorDark,
          fontWeight: FontWeight.normal,
          fontFamily: 'Roboto',
        ),
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: '$hintText',
          hintStyle: TextStyle(
              color: MyColors.doveGray,
              fontSize: 16,
              fontWeight: FontWeight.normal,
              fontFamily: 'Roboto'),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              const Radius.circular(15),
            ),
          ),
          prefixIcon: Icon(icon),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
