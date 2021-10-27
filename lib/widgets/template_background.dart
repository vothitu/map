
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

import 'back_arrow.dart';

class TemplateBackground extends StatelessWidget {
  final Widget child;
  final VoidCallback pressed;

  const TemplateBackground({
    Key? key,
    required this.child,
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/Ellipse1.png"),
          ),
          Positioned(
            top: 0,
            left: 80,
            child: Image.asset("assets/images/Ellipse2.png"),
          ),
          BackArrow(
            color: Colors.white,
            pressed: pressed,
          ),
          child,
        ],
      ),
    );
  }
}
