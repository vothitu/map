import 'package:dtumaps/data/facility/hero_tag.dart';

import 'package:dtumaps/screens/general/location.dart';
import 'package:dtumaps/screens/detail_facility/components/stars.dart';
import 'package:flutter/material.dart';

import 'hero.dart';

class DetailedInfoWidget extends StatelessWidget {
  final Location location;

  const DetailedInfoWidget({
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroWidget(
              tag: HeroTag.stars(location),
              child: StarsWidget(stars: location.starRating),
            ),
          ],
        ),
      );
}
