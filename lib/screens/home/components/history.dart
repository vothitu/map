import 'package:dtumaps/screens/home/components/facility_suggest.dart';
import 'package:dtumaps/screens/home/components/facility.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

import 'section_title.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  SectionTitle(
                    title: 'Đã ghé thăm',
                    press: () {},
                  ),
                ],
              )
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
              Padding(padding: EdgeInsets.only(right: 20)),
            ],
          ),
        )
      ],
    );
  }
}
