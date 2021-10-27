class Facility {
  final String title;
  final List<String> images;
  final double rating;
  final bool isPopular;

  Facility(
      {required this.images,
      this.rating = 0.0,
      this.isPopular = false,
      required this.title});
}

// Our demo Products

List<Facility> demoFacility = [
  Facility(
    images: [
      "assets/images/thuvien.jpg",
    ],
    title: "Thư viện Quang Trung",
    rating: 4.8,
    isPopular: true,
  ),
  Facility(
    images: [
      "assets/images/thuchanh1.jpg",
    ],
    title: "Phòng máy 602",
    rating: 4.1,
    isPopular: true,
  ),
  Facility(
    images: [
      "assets/images/thuchanh2.png",
    ],
    title: "P.học 502 Hoà Khánh",
    rating: 4.1,
    isPopular: true,
  ),
];
