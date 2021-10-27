import 'package:dtumaps/screens/general/app_bar_back.dart';
import 'package:dtumaps/widgets/drawer.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class FeedbackScreen extends StatelessWidget {
  static const String routeName = '/feedbackScreen';

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: MyDrawer(),
      body: new Container(
        padding: EdgeInsets.only(left: 5),
        child: new Column(
          children: [
            Container(
                child: AppBarCustom(
              screen: 'Đánh giá',
            )),
            Expanded(
              child: Body(),
            )
          ],
        ),
      ));
}
