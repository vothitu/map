import 'package:dtumaps/screens/general/location.dart';
import 'package:dtumaps/screens/general/review.dart';

class HeroTag {
  static String image(String urlImage) => urlImage;

  static String stars(Location location) =>
      location.name + location.starRating.toString();

  static String avatar(Review review, int position) =>
      review.urlImage + position.toString();
}
