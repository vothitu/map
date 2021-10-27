import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/screens/change_password/change_password_screen.dart';
import 'package:dtumaps/screens/settings/components/profile_top_component.dart';
import 'package:dtumaps/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';

class Body extends StatefulWidget {
  @override
  BodyScreenState createState() => BodyScreenState();
}

class BodyScreenState extends State<Body> {
  bool pinned = true;

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
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: context.height() * 0.50,
              floating: false,
              pinned: true,
              centerTitle: true,
              title: Text(innerBoxIsScrolled ? 'Cài đặt' : "",
                  style: TextStyle(color: Colors.black),
              ),
              backgroundColor:
                  innerBoxIsScrolled ? Colors.black: Colors.white,
              forceElevated: innerBoxIsScrolled,
              iconTheme: IconThemeData(color: black),
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                background: ProfileTopComponent(),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 290),
                      child: IconButton(
                          onPressed: () =>
                              Scaffold.of(context).openDrawer(),
                          icon: SvgPicture.asset(
                              "assets/icons/drawer_icon.svg")),
                    ),

                    Stack(
                      alignment: Alignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            //NotificationScreen().launch(context);
                          },
                          icon: Icon(Icons.notifications_active_outlined,
                              color: MyColors.colorPrimary, size: 28),
                        ),
                        Positioned(
                          right: 4,
                          top: 6,
                          child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: white),
                              child: Text('1',
                                  style: secondaryTextStyle(
                                      color: MyColors.colorPrimary))),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              16.height,
              Text('Cài đặt'.toUpperCase(),
                  style: boldTextStyle(color: MyColors.colorPrimary)),
              Divider(color: MyColors.colorPrimary),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                      child: SingleChildScrollView(
                      padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        10.height,
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: boxDecorationWithShadow(borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: <Widget>[
                              profileOption(Icons.help, "Đổi mật khẩu").onTap(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ChangePassword()),
                                );
                              }),
                            ],
                          ),
                        ),
                        16.height,
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: boxDecorationWithShadow(borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: <Widget>[
                              profileOption(Icons.star, "Đánh giá").onTap(() {
                              }),
                            ],
                          ),
                        ),
                        16.height,
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: boxDecorationWithShadow(borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: <Widget>[
                              profileOption(Icons.info, "Trợ giúp").onTap(() {
                              }),
                            ],
                          ),
                        ),
                        16.height,
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: boxDecorationWithShadow(borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: <Widget>[
                              profileOption(Icons.help, "Câu hỏi thường gặp").onTap(() {
                              }),
                            ],
                          ),
                        ),

                      ]
                  )
                      )
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OptionModel {
  String? name;
  IconData? icon;

  OptionModel({this.name, this.icon});
}
Widget profileOption(var icon, var heading) {
  return Container(
    padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
    child: Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(icon),
            16.width,
            Text(heading, style: primaryTextStyle(color: MyColors.colorPrimary, size: 18)),
          ],
        ).expand(),
        Icon(Icons.keyboard_arrow_right, color: MyColors.colorPrimary),
      ],
    ),
  );
}
