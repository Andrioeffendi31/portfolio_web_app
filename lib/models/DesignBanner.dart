class DesignBanner {
  final String title, description, url, pos;

  DesignBanner({required this.title, required this.description, required this.url, required this.pos});
}

List<DesignBanner> banners = [
  DesignBanner(
      title: "Illustration",
      description:
      "I can make interesting and cool\nillustrations for you",
      url: "assets/images/banner-04.jpg",
      pos : "3"
  ),
  DesignBanner(
    title: "Logo Design",
    description:
    "I can create a premium and exclusive\nlogo for your brand.",
    url: "assets/images/banner-03.jpg",
    pos : "1"
  ),
  DesignBanner(
      title: "UI/UX Design",
      description:
      "I can create amazing UI with\nunforgettable experience.",
      url: "assets/images/banner.jpg",
      pos : "2"
  ),
];