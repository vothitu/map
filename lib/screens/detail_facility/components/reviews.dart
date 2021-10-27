import 'package:dtumaps/data/facility/hero_tag.dart';
import 'package:dtumaps/data/facility/locations.dart';

import 'package:dtumaps/screens/general/location.dart';
import 'package:dtumaps/screens/general/review.dart';
import 'package:dtumaps/screens/friends/components/avatar.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/src/extensions/widget_extensions.dart';

import 'hero.dart';

class ReviewsWidget extends StatelessWidget {
  final Location location;
  final Animation<double> animation;

  const ReviewsWidget({
    required this.location,
    required this.animation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
      itemCount: location.reviews.length,
      padding: EdgeInsets.all(16),
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        final review = location.reviews[index];

        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Interval(0.2, 1, curve: Curves.easeInExpo),
            ),
            child: child,
          ),
          child: buildReview(review),
        );
      });

  Widget buildReview(Review review) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeroWidget(
                  tag: HeroTag.avatar(review, locations.indexOf(location)),
                  child: commonCachedNetworkImage(review.urlImage,
                          height: 30, width: 30, fit: BoxFit.cover)
                      .cornerRadiusWithClipRRect(50),
                ),
                Text(
                  review.username,
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                Text(
                  review.date,
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.black),
                ),
                Icon(Icons.thumb_up_alt_outlined, size: 14)
              ],
            ),
            SizedBox(height: 8),
            Text(
              review.description,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      );
}
