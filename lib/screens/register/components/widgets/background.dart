import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: -40,
              left: -80,
              child: ClipOval(
                child: Container(
                  color: Color(0xff2F80ED).withOpacity(.5),
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Positioned(
              top: -120,
              left: 80,
              child: ClipOval(
                child: Container(
                  color: Color(0xff2F80ED).withOpacity(.5),
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
