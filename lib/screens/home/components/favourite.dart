import 'package:dtumaps/screens/home/components/facility_suggest.dart';
import 'package:dtumaps/screens/home/components/facility.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

import 'section_title.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: Row(children: [
              SectionTitle(title: "Ưa thích", press: () {}),
            ])),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoFacility.length,
                (index) {
                  if (demoFacility[index].isPopular)
                    return FacilityCard(product: demoFacility[index]);
                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(15)),
            ],
          ),
        )
      ],
    );
  }
}
