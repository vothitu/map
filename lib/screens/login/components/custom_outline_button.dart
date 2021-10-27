import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

class CustomOutLineButton extends StatelessWidget {
  const CustomOutLineButton({
    Key? key,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  final Widget? child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return Container(
      width: size.width * 0.3,
      height: size.height * 0.08,
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
