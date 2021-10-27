import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';
import '../../../../constraint.dart';

class ForgotPassForm extends StatelessWidget {
  const ForgotPassForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return Form(
      child: Column(
        children: [
          Container(
            height: size.height * 0.058,
            width: size.width * 0.83,
            margin: EdgeInsets.only(
              left: kDefaultMargin + 20,
              right: kDefaultMargin + 20,
              bottom: kDefaultMargin + 15,
            ),
            child: TextFormField(
              //TODO 1: Block of code can be used to run code when the user saves the form.
              onSaved: (String? value) {},
              //TODO2: Valid email check
              onChanged: (value) {},
              /* validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Không sử dụng ký tự @'
                    : null;
              }, */
              style: TextStyle(
                fontSize: 14,
                color: kTextColorDark,
                fontWeight: FontWeight.normal,
                fontFamily: 'Roboto',
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Vui lòng nhập email',
                hintStyle: TextStyle(
                    color: MyColors.doveGray,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto'),
                contentPadding: EdgeInsets.only(bottom: 8, top: 8, left: 12),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.email_outlined),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
