import 'package:dtumaps/widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../general/app_bar_back.dart';
import 'components/body.dart';

class FriendScreen extends StatelessWidget {
  static const String routeName = '/friendScreen';

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
              screen: 'Bạn bè',
            )),
            Expanded(
              child: Body(),
            )
          ],
        ),
      ),
    );
  }
}
