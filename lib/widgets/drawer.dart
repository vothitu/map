import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/consts/my_icons.dart';
import 'package:dtumaps/screens/general/user_view_model.dart';
import 'package:dtumaps/screens/routes/routes.dart';

import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyDrawer extends StatefulHookWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  late SharedPreferences _sharedPreferences;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final name = 'Scolt Lee';
    final email = 'scoltlee@abs.com';
    final profileImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    final userViewModel = useProvider(userViewModelProvider);
    return Container(
      width: getProportionateScreenWidth(250),
      child: Drawer(
        child: Material(
          color: Colors.white10,
          child: ListView(
            children: <Widget>[
              _buildHeader(
                urlImage: profileImage,
                name: name,
                email: email,
              ),
              Container(
                padding: padding,
                child: Column(
                  children: [
                    _buildMenuItem(
                      text: 'Trang chủ',
                      icon: MyIcons.home,
                      onClicked: () =>
                          Navigator.pushReplacementNamed(context, Routes.home),
                    ),
                    const SizedBox(height: 14),
                    _buildMenuItem(
                      text: 'Bản đồ',
                      icon: MyIcons.map,
                      onClicked: () =>
                          Navigator.pushReplacementNamed(context, Routes.map),
                    ),
                    const SizedBox(height: 14),
                    _buildMenuItem(
                      text: 'Ảnh VR360',
                      icon: MyIcons.vr360,
                      onClicked: () =>
                          Navigator.pushReplacementNamed(context, Routes.vr360),
                    ),
                    const SizedBox(height: 14),
                    _buildMenuItem(
                      text: 'Bạn bè',
                      icon: MyIcons.friend,
                      onClicked: () => Navigator.pushReplacementNamed(
                          context, Routes.friend),
                    ),
                    const SizedBox(height: 14),
                    _buildMenuItem(
                      text: 'Cài đặt',
                      icon: MyIcons.setting,
                      onClicked: () => Navigator.pushReplacementNamed(
                          context, Routes.settings),
                    ),
                    const SizedBox(height: 22),
                    Divider(
                      color: MyColors.colorPrimary,
                      height: 1,
                      thickness: 1,
                      endIndent: 30,
                      indent: 10,
                    ),
                    const SizedBox(height: 22),
                    _buildMenuItem(
                      text: 'Đánh giá',
                      icon: MyIcons.star,
                      onClicked: () => Navigator.pushReplacementNamed(
                          context, Routes.feedback),
                    ),
                    const SizedBox(height: 14),
                    _buildMenuItem(
                      text: 'Đăng xuất',
                      icon: MyIcons.logout,
                      onClicked: () async {
                        await userViewModel.signOut();
                        Navigator.pushReplacementNamed(context, Routes.login);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader({
    required String urlImage,
    required String name,
    required String email,
  }) =>
      InkWell(
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 0)),
          margin: const EdgeInsets.only(bottom: 16, top: 40),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  Widget _buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color, fontSize: 16)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
