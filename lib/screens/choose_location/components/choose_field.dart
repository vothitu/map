import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/consts/my_icons.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

class ChooseField extends StatefulWidget {
  MyChooseFieldState createState() => MyChooseFieldState();
}

class MyChooseFieldState extends State<ChooseField> {
  bool isVisible = false;
  static var fieldStart = TextEditingController();
  static var fieldTarget = TextEditingController();

  void change(String value) {
    setState(() {
      if (value == "")
        isVisible = false;
      else
        isVisible = true;
    });
  }

  void clearText() {
    fieldStart.clear();
  }

  @override
  void initState() {
    super.initState();
    fieldTarget = new TextEditingController(text: 'Khu F');
    fieldStart = new TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(115),
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(10),
          bottom: getProportionateScreenHeight(10)),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Colors.black.withOpacity(0.1),
          width: 1.5,
        ),
      )),
      child: Row(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  MyIcons.back,
                  color: MyColors.iconColor,
                  size: 22,
                )),
          ),
          Column(
            children: [
              Container(
                  height: getProportionateScreenHeight(45),
                  width: getProportionateScreenWidth(260),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: MyColors.border)),
                  margin: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      top: getProportionateScreenWidth(5),
                      bottom: getProportionateScreenWidth(5)),
                  child: TextField(
                      onChanged: (value) {
                        change(value);
                      },
                      style:
                          TextStyle(color: MyColors.colorPrimary, fontSize: 18),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 10, top: 10),
                        hintText: "Choose start location",
                        prefixIcon: Icon(
                          MyIcons.scope,
                          color: MyColors.red,
                          size: 22,
                        ),
                        suffixIcon: Visibility(
                          visible: isVisible,
                          child: IconButton(
                              onPressed: () {
                                clearText();
                                change("");
                              },
                              icon: Icon(
                                MyIcons.cancel,
                                size: 22,
                                color: MyColors.iconColor,
                              )),
                        ),
                      ),
                      controller: fieldStart)),
              Container(
                  height: getProportionateScreenHeight(45),
                  width: getProportionateScreenWidth(260),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: MyColors.border),
                  ),
                  margin:
                      EdgeInsets.only(left: getProportionateScreenWidth(10)),
                  child: Container(
                    child: Row(children: <Widget>[
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                              color: MyColors.colorPrimary, fontSize: 18),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(bottom: 10, top: 10, right: 25),
                            prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                    "assets/images/location_pin.png",
                                    height: 22,
                                    width: 22)),
                          ),
                          controller: fieldTarget,
                        ),
                      ),
                    ]),
                  )),
            ],
          ),
          IconButton(
              onPressed: () {
                String tmp = fieldTarget.text;
                fieldTarget.text = fieldStart.text;
                fieldStart.text = tmp;
              },
              icon: Icon(
                MyIcons.arrow,
                color: MyColors.iconColor,
                size: 22,
              )),
        ],
      ),
    );
  }
}
