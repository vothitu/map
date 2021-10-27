import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/screens/general/user.dart';
import 'package:dtumaps/screens/user/components/profile_widget.dart';
import 'package:dtumaps/screens/user/components/textfield_widget.dart';
import 'package:dtumaps/screens/user/components/user_preferences.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

import 'birtday.dart';
import 'male.dart';

class Body extends StatefulWidget {
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  var items = ['Nam', 'Nữ'];
  String dropDownValue = 'Không rõ';

  @override
  Widget build(BuildContext context) {
    final User user = UserPreferences.myUser;
    return Container(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 32),
            physics: BouncingScrollPhysics(),
            children: [
          ProfileWidget(
            imagePath: user.imagePath,
            isEdit: true,
            onClicked: () async {},
          ),
          const SizedBox(height: 18),
          TextFieldWidget(
            label: 'Họ tên',
            text: user.name,
            onChanged: (name) {},
          ),
          const SizedBox(height: 18),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Giới tính',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: MyColors.colorSecond,
                fontFamily: 'Mulish',
              ),
            ),
            const SizedBox(height: 8),
            MaleWidget(),
          ]),
          const SizedBox(height: 18),
          BirthdayWidget(
            label: 'Ngày sinh',
            day: user.birthDay,
          ),
          const SizedBox(height: 18),
          TextFieldWidget(
            label: 'Email',
            text: user.email,
            onChanged: (email) {},
          ),
          const SizedBox(height: 18),
          TextFieldWidget(
            label: 'Điện thoại',
            text: user.phone,
            onChanged: (phone) {},
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            child: Text('Lưu',
                style: TextStyle(
                  fontSize: 22,
                )),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              fixedSize: Size(
                getProportionateScreenWidth(330),
                getProportionateScreenHeight(55),
              ),
            ),
            onPressed: () => Navigator.pop(context),
          )
        ]));
  }
}
