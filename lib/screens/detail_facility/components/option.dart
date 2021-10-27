import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/screens/home/components/bottom_sheet.dart';
import 'package:dtumaps/screens/routes/routes.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButtonContainer(text: 'Bản đồ'),
              SizedBox(width: 30),
              OutlinedButtonContainer(
                  colorBorder: MyColors.colorBorder,
                  colorText: MyColors.colorPrimary,
                  text: 'VR360')
            ],
          )
        ],
      ),
    );
  }
}

class ElevatedButtonContainer extends StatelessWidget {
  final String text;

  const ElevatedButtonContainer({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        child: Text(text,
            style: TextStyle(
              fontSize: 16,
            )),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          fixedSize: Size(
            getProportionateScreenWidth(100),
            getProportionateScreenHeight(45),
          ),
        ),
        onPressed: () => Navigator.pushReplacementNamed(context, Routes.map),
      );
}