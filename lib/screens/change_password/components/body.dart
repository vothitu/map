import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'field_form.dart';

class Body extends StatelessWidget {
  final headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(22),
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Container(
                height: 300,
                width: 300,
                child: Lottie.asset('assets/icons/change_passwords.json')),
            Text("Tạo mật khẩu mới", style: headingStyle),
            SizedBox(height: ScreenSize.screenHeight * 0.01),
            Text(
                "Mật khẩu mới của bạn phải khác với \nmật khẩu đã sử dụng trước đó",
                textAlign: TextAlign.center,
                style: TextStyle(color: MyColors.colorSecond)),
            SizedBox(height: ScreenSize.screenHeight * 0.04),
            FieldForm(),
            SizedBox(height: ScreenSize.screenHeight * 0.04),
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
          ],
        ),
      ),
    );
  }
}
