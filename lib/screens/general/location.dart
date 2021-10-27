import 'package:dtumaps/screens/general/review.dart';

class Location {
  final String name;
  final String urlImage;
  final String latitude;
  final String longitude;

  final int starRating;
  final List<Review> reviews;

  Location({
    required this.reviews,
    required this.name,
    required this.urlImage,
    required this.latitude,
    required this.longitude,

    required this.starRating,
  });
}
