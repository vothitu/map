import 'package:dtumaps/widgets/bottom_sheet.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'facility_card.dart';
import 'section_title.dart';

class Facility extends StatelessWidget {
  const Facility({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
            child: Row(children: [
              SectionTitle(
                title: "Cơ Sở",
                press: () {},
              )
            ])),
        Container(
          child: CarouselSlider(
              items: [
                FacilityCard(
                  image: "assets/images/quangtrung.jpg",
                  category: "Quang Trung",
                ),
                FacilityCard(
                  image: "assets/images/nguyenvanlinh.jpg",
                  category: "Nguyễn Văn Linh",
                ),
                FacilityCard(
                  image: "assets/images/hoakhanh.jpg",
                  category: "Hoà Khánh",
                ),
              ],
              options: CarouselOptions(
                height: 200,
                disableCenter: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 500),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )),
        )
      ],
    );
  }
}
