import 'package:dtumaps/utilize/screen_size.dart';

import 'package:dtumaps/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/body.dart';
import 'components/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.only(left: 5),
          child: Column(
            children: [
              Container(
                  child: AppBarCustom(
                screen: 'Trang chủ',
              )),
              Container(
                child: SearchField(),
                padding: EdgeInsets.only(bottom: 20),
              ),
              Expanded(
                child: Body(),
              )
            ],
          ),
        ));
  }
}
