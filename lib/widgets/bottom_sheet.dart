import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/data/models/building/building.dart';
import 'package:dtumaps/screens/routes/routes.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

class MyBottomSheet extends StatelessWidget {
  final Building? building;

  const MyBottomSheet({Key? key, this.building}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String textPlaceHolder =
        'Phục vụ công tác dạy học chương trình Đào Tạo Quốc Tế. Nơi được trang bị nhiều thiết bị, phòng học, phòng thí nghiệm hiện đại...';
    return Wrap(
      children: <Widget>[
        Container(
          child: Material(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: CustomScrollView(
                physics: NeverScrollableScrollPhysics(),
                controller: ModalScrollController.of(context),
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverSafeArea(
                    //bottom: false,
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        height: getProportionateScreenHeight(190),
                        child: ListView(
                          reverse: false,
                          scrollDirection: Axis.horizontal,
                          physics: PageScrollPhysics(),
                          children: <Widget>[
                            ContainerChild(urlImage: 0),
                            ContainerChild(urlImage: 1),
                            ContainerChild(urlImage: 2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          building == null
                              ? "Khu F"
                              : building!.name ?? 'Khu F',
                          style: TextStyle(
                              height: 2,
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            building == null
                                ? textPlaceHolder
                                : building!.description ??
                                    'Phục vụ công tác dạy học chương trình Đào Tạo Quốc Tế. Nơi được trang bị nhiều thiết bị, phòng học, phòng thí nghiệm hiện đại...',
                            style: TextStyle(
                                height: 1.3,
                                fontSize: 15,
                                color: Colors.black)),
                        Container(
                          height: getProportionateScreenHeight(70),
                          margin: EdgeInsets.only(
                            top: getProportionateScreenHeight(10),
                            bottom: getProportionateScreenHeight(10),
                          ),
                          padding: EdgeInsets.all(5),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButtonContainer(
                                  text: 'Đường đi',
                                  onPressed: () =>
                                      Navigator.pushReplacementNamed(
                                    context,
                                    Routes.choose_location,
                                  ),
                                ),
                                OutlinedButtonContainer(
                                  colorBorder: MyColors.colorBorder,
                                  colorText: MyColors.colorPrimary,
                                  text: 'Lưu',
                                ),
                                OutlinedButtonContainer(
                                  colorBorder: MyColors.colorBorder,
                                  colorText: MyColors.colorPrimary,
                                  text: 'Chia sẻ',
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ElevatedButtonContainer extends StatelessWidget {
  final String text;

  const ElevatedButtonContainer(
      {Key? key,
      required this.text,
      required Future<Object?> Function() onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        child: Text(text, style: TextStyle(fontSize: 16)),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          fixedSize: Size(
            getProportionateScreenWidth(100),
            getProportionateScreenHeight(45),
          ),
        ),
        onPressed: () =>
            Navigator.pushReplacementNamed(context, Routes.choose_location),
      );
}

class OutlinedButtonContainer extends StatelessWidget {
  final String text;
  final Color colorText, colorBorder;

  const OutlinedButtonContainer({
    Key? key,
    required this.text,
    required this.colorText,
    required this.colorBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => OutlinedButton(
      child: Text(text, style: TextStyle(fontSize: 16, color: colorText)),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(width: 1, color: colorBorder),
        fixedSize: Size(
          getProportionateScreenWidth(100),
          getProportionateScreenHeight(45),
        ),
      ),
      onPressed: () => Navigator.pop(context));
}

class ContainerChild extends StatelessWidget {
  final int urlImage;
  final assets = [
    Image(image: AssetImage('assets/images/demo_image.jpeg')),
    Image(image: AssetImage('assets/images/demo_image_2.jpg')),
    Image(image: AssetImage('assets/images/demo_image_3.jpg')),
  ];

  final img = [
    'assets/images/demo_image.jpeg',
    'assets/images/demo_image_2.jpg',
    'assets/images/demo_image_3.jpg'
  ];

  ContainerChild({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Padding(
            padding: EdgeInsets.only(right: 6),
            child: InkWell(
                onTap: () => SwipeImageGallery(
                      context: context,
                      initialIndex: urlImage,
                      images: assets,
                    ).show(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    img[urlImage],
                    height: getProportionateScreenHeight(160),
                    width: getProportionateScreenWidth(100),
                    fit: BoxFit.cover,
                  ),
                ))),
      );
}
