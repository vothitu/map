import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/screens/routes/routes.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

class MyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(children: <Widget>[
      Container(
          child: Material(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15),
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
                                const Text('Khu F',
                                    style: TextStyle(
                                        height: 2,
                                        fontSize: 19,
                                        color: Colors.black,
                                       )),
                                const Text(
                                    'Ph???c v??? c??ng t??c d???y h???c ch????ng tr??nh ????o T???o Qu???c T???. N??i ???????c trang b??? nhi???u thi???t b???, ph??ng h???c, ph??ng th?? nghi???m hi???n ?????i...',
                                    style: TextStyle(
                                        height: 1.3,
                                        fontSize: 15,
                                        color: Colors.black)),
                                Container(
                                    height: getProportionateScreenHeight(70),
                                    margin: EdgeInsets.only(
                                        top: getProportionateScreenHeight(10),
                                        bottom:
                                            getProportionateScreenHeight(10)),
                                    padding: EdgeInsets.all(5),
                                    child: Center(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButtonContainer(
                                            text: '???????ng ??i'),
                                        OutlinedButtonContainer(
                                            colorBorder: MyColors.colorBorder,
                                            colorText: MyColors.colorPrimary,
                                            text: 'L??u'),
                                        OutlinedButtonContainer(
                                            colorBorder: MyColors.colorBorder,
                                            colorText: MyColors.colorPrimary,
                                            text: 'VR360')
                                      ],
                                    ))),
                              ]),
                        )
                      ])))),
    ]);
  }
}

class ElevatedButtonContainer extends StatelessWidget {
  final String text;

  const ElevatedButtonContainer({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        child: Text(text,
            style: TextStyle(
              fontSize: 16,
            )),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
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
                    width: getProportionateScreenWidth(300),
                    fit: BoxFit.fill,
                  ),
                ))),
      );
}
