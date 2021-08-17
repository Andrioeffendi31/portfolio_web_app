class ArtMob {
  final String? title, category, description, url;
  final bool? isImage;

  ArtMob({this.title, this.category, this.description, this.isImage, this.url});
}

class ArtDesk {
  final String? title, category, description, url;
  final bool? isImage;

  ArtDesk({this.title, this.category, this.description, this.isImage, this.url});
}

List<ArtMob> artsMobile = [
  ArtMob(
    isImage : false,
    category: "Logo Design",
    title: "Cheap Me",
    description:
    "Cheap Me is an online distributor that sells all kinds of automotive and home & living products. Cheap Me Official Selling all kinds of goods YOU SATISFIED ?? WE ARE HAPPY.",
  ),
  ArtMob(
      isImage : true,
      url : "assets/images/art_banner/art_banner1.jpg"
  ),
  ArtMob(
    isImage : false,
    category: "Logo Design",
    title: "Jays Fashion",
    description:
    "Cheap Me is an online distributor that sells all kinds of automotive and home & living products. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  ArtMob(
      isImage : true,
      url : "assets/images/art_banner/art_banner2.jpg"
  ),
];

List<ArtDesk> artsDesktop = [
  ArtDesk(
    isImage : false,
    category: "Logo Design",
    title: "Cheap Me",
    description:
    "Cheap Me is an online distributor that sells all kinds of automotive and home & living products. Cheap Me Official Selling all kinds of goods YOU SATISFIED ?? WE ARE HAPPY.",
  ),
  ArtDesk(
      isImage : true,
      url : "assets/images/art_banner/art_banner1.jpg"
  ),
  ArtDesk(
      isImage : true,
      url : "assets/images/art_banner/art_banner2.jpg"
  ),
  ArtDesk(
    isImage : false,
    category: "Logo Design",
    title: "Jays Fashion",
    description:
    "Locally produced e-Boutique, which helps grow Indonesia's domestic production growth.",
  ),
];
