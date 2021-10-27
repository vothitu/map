import 'package:flutter/material.dart';

class BuildTimer extends StatelessWidget {
  const BuildTimer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Mã này sẽ hết hạn trong ",
          style: TextStyle(
            color: Colors.grey[400],
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            fontSize: 14,
          ),
        ),
        TweenAnimationBuilder(
          tween: Tween(
            begin: 30.0,
            end: 0,
          ),
          //just allow user 30s
          duration: Duration(
            seconds: 30,
          ),
          // ignore: unnecessary_brace_in_string_interps
          builder: (context, value, child) => Text(
            //trying to fix value.toInt()
            "$value",
            style: TextStyle(
              color: Color(0xFFfF6565),
            ),
          ),
          //TODO 1: Do something
          onEnd: () {},
        ),
      ],
    );
  }
}
