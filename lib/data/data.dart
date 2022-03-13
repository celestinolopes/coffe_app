class SliderItem {
  late String title;
  late String subtitle;
  late String image;
  SliderItem(
      {required this.image, required this.subtitle, required this.title});

  static final List<SliderItem> sliderItems = [
    SliderItem(
      image: "assets/images/1.jpg",
      subtitle: "Buy the best and premium coffee makers",
      title: "StilishDesign",
    ),
    SliderItem(
      image: "assets/images/2.jpg",
      subtitle: "A unique and different style from other",
      title: "ColdenBrew",
    ),
    SliderItem(
      image: "assets/images/3.jpg",
      subtitle: "Buy the best and premium coffee makers",
      title: "StilishDesign",
    ),
  ];
}
