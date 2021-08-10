class SliderModel {
  final String title;
  final String image;
  final String desc;

  SliderModel({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<SliderModel> sliderModel = [
  SliderModel(
      title: "Discover the trends and products.",
      image: "assets/images/onboarding_image1.svg",
      desc: "One hotspot fro wide range of categories."),
  SliderModel(
    image: "assets/images/onboarding_image2.svg",
    title: "Hang tight with your wishlist.",
    desc: "Worth the difference for your ideal choice.",
  ),
  SliderModel(
    image: "assets/images/onboarding_image3.svg",
    title: "Don’t want to ghost the market around?",
    desc: "Shop securely at your doorstep with Steamly.",
  ),
];
