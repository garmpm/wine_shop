class WineModel {
  String name;
  String category;
  String subCategory;
  String origin;
  int price;
  String vesselType;
  bool isAvailable;
  bool isFavourite;
  int criticsScore;
  String image;
  WineModel({
    required this.name,
    required this.category,
    required this.subCategory,
    required this.origin,
    required this.price,
    required this.vesselType,
    this.isAvailable = true,
    this.isFavourite = false,
    required this.criticsScore,
    required this.image,
  });
}
