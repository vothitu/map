import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

class MaleWidget extends StatefulWidget {
  MaleWidgetState createState() => MaleWidgetState();
}

class MaleWidgetState extends State<MaleWidget> {
  var items = ['Nam', 'Nữ'];
  String dropDownValue = 'Không rõ';

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: getProportionateScreenWidth(350),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.colorBorder),
          borderRadius: BorderRadius.circular(12),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            items: <String>['Không rõ', 'Nam', 'Nữ']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value,
                    style: TextStyle(
                        color: MyColors.colorSecond,
                        fontSize: 16.0,
                        height: 0.9)),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropDownValue = newValue!;
              });
            },
            value: dropDownValue,
          ),
        ));
  }
}
