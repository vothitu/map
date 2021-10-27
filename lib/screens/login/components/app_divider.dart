import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return Divider(
      color: MyColors.slateGray,
      thickness: 0.5,
      height: size.height * 0.1,
    );
  }
}
