import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;

  const LoginBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);

    return Container(
      width: size.width,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Image.asset("assets/images/register_top.png"),
          ),
          Positioned(
            left: 0,
            top: 30,
            child: Image.asset("assets/images/register_top_2.png"),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 45,
            child: Image.asset("assets/images/register_top_3.png"),
          ),
          child,
        ],
      ),
    );
  }
}
