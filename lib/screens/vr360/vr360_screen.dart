import 'package:dtumaps/screens/general/app_bar_back.dart';
import 'package:dtumaps/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'component/body.dart';

class VR360 extends StatelessWidget {
  static const String routeName = '/vr360Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        body: new Container(
          padding: EdgeInsets.only(left: 5),
          child: new Column(
            children: [
              Container(
                  child: AppBarCustom(
                screen: 'Ảnh VR360',
              )),
              Expanded(
                child: Body(),
              )
            ],
          ),
        ));
  }
}
