import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/consts/my_icons.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

import 'choose_field.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'H',
      'G',
      'I',
      'C',
      'D',
      'E',
      'F',
      'H',
      'G',
      'I'
    ];
    return Container(
      height: ScreenSize.screenHeight,
      margin: EdgeInsets.only(bottom: getProportionateScreenWidth(5)),
      child: ListView.separated(
        padding: EdgeInsets.only(
            right: getProportionateScreenWidth(15),
            left: getProportionateScreenWidth(15),
            bottom: getProportionateScreenWidth(35)),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                MyChooseFieldState.fieldStart.text = 'Entry ${entries[index]}';
              },
              child: Container(
                height: 45,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        MyIcons.history,
                        color: MyColors.iconColor.withOpacity(0.8),
                        size: 22,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Entry ${entries[index]}',
                            style: TextStyle(
                              height: 1.3,
                              fontSize: 15,
                              color: MyColors.colorPrimary,
                              fontFamily: 'Roboto',
                            )),
                        Text('Entry ${entries[index]}',
                            style: TextStyle(
                              height: 1.3,
                              fontSize: 13,
                              color: MyColors.colorSecond,
                              fontFamily: 'Roboto',
                            )),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15),
                ),
              ));
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
