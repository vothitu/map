import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';
import '../../../../constraint.dart';

class NewPasswordInput extends StatefulWidget {
  NewPasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  _NewPasswordInputState createState() => _NewPasswordInputState();
}

class _NewPasswordInputState extends State<NewPasswordInput> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return Container(
      height: size.height * 0.058,
      width: size.width * 0.83,
      margin: EdgeInsets.only(
        left: kDefaultMargin + 20,
        right: kDefaultMargin + 20,
      ),
      alignment: Alignment.centerLeft,
      child: TextFormField(
        //TODO 1: Check the old and new password if different
        //and Receives the text that the user has entered empty
        validator: (value) {},
        onChanged: (value) {},
        //TODO2: Save curent value
        keyboardType: TextInputType.multiline,
        style: TextStyle(
          fontSize: 14,
          color: kTextColorDark,
          fontWeight: FontWeight.normal,
          fontFamily: 'Roboto',
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(
              color: MyColors.doveGray,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              fontFamily: 'Roboto'),
          contentPadding: EdgeInsets.only(bottom: 8, top: 8, left: 12),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              const Radius.circular(15),
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
          ),
        ),
        obscureText: _isObscure,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 25,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
