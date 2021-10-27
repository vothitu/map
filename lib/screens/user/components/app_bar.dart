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
    return Column(
      children: [
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
                    onPressed: () =>
                        Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back)),
                Text(
                  screen,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
                Container(
                  padding: EdgeInsets.only(right: 55),
                )
              ],
            );
          }),
        ),

      ]);
  }
}
