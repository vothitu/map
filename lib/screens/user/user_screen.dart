
import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/body.dart';

class UserScreen extends StatefulWidget {
  static const String routeName = '/userScreen';

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        padding: EdgeInsets.only(left: 5),
        child: new Column(
          children: [
            Container(
                child: AppBarCustom(screen: 'Hồ sơ')
            ),
            Expanded(
              child: Body(),
            )
          ],
        ),
      ),
    );
  }
}
