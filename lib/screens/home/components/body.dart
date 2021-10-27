import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

import 'favourite.dart';
import 'history.dart';
import 'special_facility.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Facility(),
          SizedBox(height: getProportionateScreenHeight(30)),
          History(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Favourite(),
          SizedBox(height: getProportionateScreenHeight(30)),
        ],
      ),
    );
  }
}
