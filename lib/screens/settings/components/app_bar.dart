import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarCustom extends StatelessWidget {
  final String screen;

  const AppBarCustom({
    Key? key,
    required this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 30,
      ),
      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Builder(builder: (context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: SvgPicture.asset("assets/icons/drawer_icon.svg")),
            ],
          );
        }),
      ),
    ]);
  }
}
