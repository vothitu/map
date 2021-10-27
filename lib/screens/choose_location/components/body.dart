import 'package:dtumaps/screens/choose_location/components/choose_field.dart';
import 'package:dtumaps/screens/choose_location/components/detail.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ChooseField(),
            SizedBox(height: getProportionateScreenHeight(10)),
            Detail(),
          ],
        ),
      ),
    );
  }
}
