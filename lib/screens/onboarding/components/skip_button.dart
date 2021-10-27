import 'package:dtumaps/constraint.dart';
import 'package:dtumaps/screens/routes/routes.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding - 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Routes.login);
            },
            child: Text(
              "Bỏ qua",
              style: TextStyle(
                  color: kTextColorBlue,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  letterSpacing: 1),
            ),
          ),
        ],
      ),
    );
  }
}
