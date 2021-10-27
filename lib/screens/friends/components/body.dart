import 'package:dtumaps/screens/friends/components/friend_exam.dart';
import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/data/models/friend_model.dart';
import 'package:dtumaps/screens/friends/components/avatar.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/src/extensions/int_extensions.dart';
import 'package:nb_utils/src/extensions/widget_extensions.dart';

class Body extends StatefulWidget {
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  List<FriendModel> list = getMayKnowData();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          FriendModel data = list[index];
          return Container(
            margin: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                commonCachedNetworkImage(data.image, fit: BoxFit.cover, height: 60, width: 60).cornerRadiusWithClipRRect(35),
                16.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.name!, style: TextStyle(
                        height: 1.3,
                        fontSize: 16,
                        color: MyColors.colorPrimary,
                        fontFamily: 'Roboto')),
                    4.height,
                    Text(data.add!, style: TextStyle(
                        height: 1.3,
                        fontSize: 16,
                        color: MyColors.colorSecond,
                        fontFamily: 'Roboto')),
                  ],
                ).expand(),
                IconButton(
                  onPressed: () {
                    list[index].fev = !list[index].fev!;
                    setState(() {});
                  },
                  icon: list[index].fev! ? Icon(Icons.person_add_alt_1, color: list[index].fev! ? MyColors.friend : Colors.black):Icon(Icons.person_remove, color: list[index].fev! ? MyColors.friend : Colors.black),
                ),
              ],
            ),
          ).onTap(() {
          });
        }
      ),
    );
  }

}