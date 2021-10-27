import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/data/facility/hero_tag.dart';
import 'package:dtumaps/data/facility/locations.dart';

import 'package:dtumaps/screens/general/location.dart';
import 'package:dtumaps/screens/detail_facility/components/stars.dart';
import 'package:dtumaps/screens/friends/components/avatar.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/src/extensions/widget_extensions.dart';
import 'hero.dart';

class ExpandedContentWidget extends StatelessWidget {
  final Location location;

  const ExpandedContentWidget({
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: MyColors.appBarColor.withOpacity(0.7),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.only(top: 8, left: 10, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            buildRating(location: location),
            SizedBox(height: 5),
            buildReview(location: location),
          ],
        ),
      );

  Widget buildRating({
    required Location location,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeroWidget(
            tag: HeroTag.stars(location),
            child: StarsWidget(stars: location.starRating),
          ),
        ],
      );

  Widget buildReview({
    required Location location,
  }) =>
      Row(
        children: location.reviews.map((review) {
          final pageIndex = locations.indexOf(location);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: HeroWidget(
              tag: HeroTag.avatar(review, pageIndex),
              child: commonCachedNetworkImage(review.urlImage,
                      height: 30, width: 30, fit: BoxFit.cover)
                  .cornerRadiusWithClipRRect(50),
            ),
          );
        }).toList(),
      );
}
