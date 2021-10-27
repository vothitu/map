class OnboardingModel {
  String image, text, title;

  OnboardingModel(
      {required this.image, required this.text, required this.title});

  static List<OnboardingModel> list = [
    OnboardingModel(
        image: "assets/SVG/DirectionsPana.svg",
        text:
            "DTU Maps giúp bạn tra cứu vị trí, thông tin toà nhà, phòng học cùng tính năng chỉ dẫn đường đi.",
        title: "Tra cứu địa điểm"),
    OnboardingModel(
        image: "assets/SVG/LocationTracking.svg",
        text:
            "Giúp bạn bè đi đến vị trí của bạn một cách dễ dàng và nhanh chóng ngay trên bản đồ.",
        title: "Chia sẻ vị trí"),
    OnboardingModel(
        image: "assets/SVG/NavigationAmico.svg",
        text:
            "Ứng dụng công nghệ hình ảnh 360, mang đến trải nghiệm cơ sở vật chất trường Đại học Duy Tân từ xa.",
        title: "Công nghệ VR360"),
  ];
}
