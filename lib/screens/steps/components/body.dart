import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/consts/my_icons.dart';

import 'package:dtumaps/screens/steps/components/step_field.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';
import 'bottom_sheet.dart';

class Body extends StatefulWidget {
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: getProportionateScreenHeight(70),
          width: double.infinity,
          padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Colors.black.withOpacity(0.1),
              width: 1.5,
            ),
          )),
          child: Container(
            margin: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                right: getProportionateScreenWidth(15)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('13 phút',
                      style: TextStyle(
                          height: 2,
                          fontSize: 19,
                          color: MyColors.colorPrimary,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700)),
                  const Text('Tuyến đường nhanh nhất',
                      style: TextStyle(
                          height: 1.3,
                          fontSize: 15,
                          color: MyColors.colorSecond,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600)),
                ]),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(
              left: getProportionateScreenWidth(15),
              right: getProportionateScreenWidth(15),
              bottom: getProportionateScreenHeight(175)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Các chặng',
                    style: TextStyle(
                        height: 2,
                        fontSize: 19,
                        color: MyColors.colorPrimary,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w700)),
                StepField(icon: MyIcons.location, text: 'Phòng 502'),
                StepField(
                    icon: MyIcons.turn_left,
                    text: 'Chếch sang bên trái về hướng...'),
                StepField(
                    icon: MyIcons.turn_right,
                    text: 'Chếch sang bên phải về hướng...'),
                StepField(
                    icon: MyIcons.turn_left,
                    text: 'Chếch sang bên trái về hướng...'),
                StepField(icon: MyIcons.arrow_up, text: 'Đi thẳng 100m...')
              ]),
        ),
        Container(
            height: getProportionateScreenHeight(150),
            child: Stack(children: <Widget>[StepsBottomSheet()]))
      ]),
    );
  }
}
