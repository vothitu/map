import 'package:cached_network_image/cached_network_image.dart';
import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/screens/routes/routes.dart';
import 'package:dtumaps/screens/user/user_screen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class ProfileTopComponent extends StatefulWidget {
  const ProfileTopComponent({Key? key}) : super(key: key);

  @override
  _ProfileTopComponentState createState() => _ProfileTopComponentState();
}

class _ProfileTopComponentState extends State<ProfileTopComponent> {
  bool isExpand = false;
  String favourite =
      'Thích đi học sớm. Vẫn còn một mình, thích đi dạo phố, cafe quán quen.';
  static const event_ic_london = 'assets/images/london.jpg';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        commonCachedNetworkImage(event_ic_london,
            fit: BoxFit.cover, width: context.width(), height: 300),
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 16, left: 16, top: 200),
              padding: EdgeInsets.only(left: 16, right: 16),
              width: context.width(),
              decoration: boxDecorationWithRoundedCorners(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: defaultBoxShadow(),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    16.height,
                    Text('Scolt Lee', style: boldTextStyle()),
                    4.height,
                    Text('Thanh Khê, Đà Nẵng', style: primaryTextStyle()),
                    8.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          decoration: boxDecorationWithRoundedCorners(
                              borderRadius: BorderRadius.circular(24),
                              backgroundColor:
                                  MyColors.colorPrimary.withOpacity(0.8)),
                          child: Text('VIP',
                              style: primaryTextStyle(color: white)),
                        ).onTap(() {}),
                      ],
                    ),
                    16.height,
                    Divider(
                        color: MyColors.colorPrimary.withOpacity(0.3),
                        height: 0.1,
                        thickness: 0.2),
                    16.height,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            createRichText(
                              list: [
                                TextSpan(text: '1.5k ', style: boldTextStyle()),
                                TextSpan(
                                    text: 'Bạn bè',
                                    style: secondaryTextStyle()),
                              ],
                            ).onTap(() {}),
                            24.width,
                            createRichText(
                              list: [
                                TextSpan(text: '25 ', style: boldTextStyle()),
                                TextSpan(
                                    text: 'Bạn chung',
                                    style: secondaryTextStyle()),
                              ],
                            ).onTap(() {})
                          ],
                        ),
                        8.height,
                        Text('Tiểu sử:', style: secondaryTextStyle()),
                        Row(
                          children: [
                            Text(favourite,
                                    style: primaryTextStyle(),
                                    maxLines: isExpand ? favourite.length : 1)
                                .expand(),
                            IconButton(
                                onPressed: () {
                                  isExpand = !isExpand;
                                  setState(() {});
                                },
                                icon: isExpand
                                    ? Icon(Icons.keyboard_arrow_up_outlined)
                                    : Icon(Icons.keyboard_arrow_down_sharp))
                          ],
                        ).expand()
                      ],
                    ).expand()
                  ]).paddingTop(16),
            ),
            Positioned(
              top: 130,
              child: commonCachedNetworkImage(
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover)
                  .cornerRadiusWithClipRRect(50),
            ),
            Container(
              margin: EdgeInsets.only(left: 300),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserScreen()),
                    );
                  },
                  icon: Icon(EvaIcons.edit2),
                  color: MyColors.colorPrimary.withOpacity(0.9)),
            ),
          ],
        ),
      ],
    );
  }
}

Widget commonCachedNetworkImage(
  String? url, {
  double? height,
  double? width,
  BoxFit? fit,
  AlignmentGeometry? alignment,
  bool usePlaceholderIfUrlEmpty = true,
  double? radius,
  Color? color,
}) {
  if (url!.validate().isEmpty) {
    return placeHolderWidget(
        height: height,
        width: width,
        fit: fit,
        alignment: alignment,
        radius: radius);
  } else if (url.validate().startsWith('http')) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
      color: color,
      alignment: alignment as Alignment? ?? Alignment.center,
      errorWidget: (_, s, d) {
        return placeHolderWidget(
            height: height,
            width: width,
            fit: fit,
            alignment: alignment,
            radius: radius);
      },
      placeholder: (_, s) {
        if (!usePlaceholderIfUrlEmpty) return SizedBox();
        return placeHolderWidget(
            height: height,
            width: width,
            fit: fit,
            alignment: alignment,
            radius: radius);
      },
    );
  } else {
    return Image.asset(url,
            height: height,
            width: width,
            fit: fit,
            alignment: alignment ?? Alignment.center)
        .cornerRadiusWithClipRRect(radius ?? defaultRadius);
  }
}

Widget placeHolderWidget(
    {double? height,
    double? width,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    double? radius}) {
  return Image.asset('assets/images/placeholder.jpg',
          height: height,
          width: width,
          fit: fit ?? BoxFit.cover,
          alignment: alignment ?? Alignment.center)
      .cornerRadiusWithClipRRect(radius ?? defaultRadius);
}
