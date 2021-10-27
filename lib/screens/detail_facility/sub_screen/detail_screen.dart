import 'package:dtumaps/data/facility/hero_tag.dart';

import 'package:dtumaps/screens/general/location.dart';
import 'package:dtumaps/screens/detail_facility/components/detailed_info.dart';
import 'package:dtumaps/screens/detail_facility/components/hero.dart';
import 'package:dtumaps/screens/detail_facility/components/lat_long.dart';
import 'package:dtumaps/screens/detail_facility/components/reviews.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Location location;
  final Animation<double> animation;

  const DetailScreen({
    required this.location,
    required this.animation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('INTERESTS'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox.expand(
                    child: HeroWidget(
                      tag: HeroTag.image(location.urlImage),
                      child: Image.asset(location.urlImage, fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: LatLongWidget(location: location),
                  ),
                ],
              ),
            ),
            DetailedInfoWidget(location: location),
            Expanded(
              flex: 5,
              child: ReviewsWidget(location: location, animation: animation),
            ),
          ],
        ),
      );
}
