import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepField extends StatelessWidget{
 final icon,text;

  StepField ({
    Key? key,
    required this.icon,required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenHeight(15)),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: MyColors.iconColor,
                size: 22,
              ),
              Container(
                margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(10)),
                width: getProportionateScreenWidth(290),

                child: Text(text,
                    style: TextStyle(
                        height: 1.3,
                        fontSize: 16,
                        color: MyColors.colorPrimary,
                        fontFamily: 'Roboto')),
              ),
            ],
          ),
          Container(
            height: getProportionateScreenHeight(20),
            margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: Colors.black.withOpacity(0.1),
                      width: 1.5,
                    ))),
          ),
        ],
      ),
    );
  }

}