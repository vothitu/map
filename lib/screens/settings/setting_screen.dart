
import 'package:dtumaps/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/body.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = '/settingScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Stack(
          children: [
            Body(),
          ],
        ),

    );
  }

}
