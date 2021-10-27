import 'package:dtumaps/data/facility/reviews.dart';

import 'package:dtumaps/screens/general/location.dart';

List<Location> locations = [
  Location(
    name: 'TOÀ NHÀ F',
    urlImage: 'assets/images/sea.jpg',
    starRating: 4,
    latitude: 'NORTH LAT 24',
    longitude: 'EAST LNG 17',
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'TOÀ NHÀ A',
    urlImage: 'assets/images/mountain.jpg',
    starRating: 4,
    latitude: 'SOUTH LAT 14',
    longitude: 'EAST LNG 27',
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'TOÀ NHÀ B',
    urlImage: 'assets/images/sea2.jpg',
    starRating: 4,
    latitude: 'NORTH LAT 24',
    longitude: 'WEST LNG 08',
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'Toà Nhà D',
    urlImage: 'assets/images/mountain2.jpg',
    starRating: 4,
    latitude: 'SOUTH LAT 39',
    longitude: 'WEST LNG 41',
    reviews: Reviews.allReviews,
  ),
];
