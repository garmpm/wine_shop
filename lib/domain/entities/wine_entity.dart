import 'package:wine_shop/domain/entities/origin_entity.dart';

class WineEntity {
  String name;
  String category;
  OriginEntity origin;
  int price;
  String bottleSize;
  bool isAvailable;
  bool isFavourite;
  int criticsScore;
  String image;
  WineEntity({
    required this.name,
    required this.category,
    required this.origin,
    required this.price,
    required this.bottleSize,
    this.isAvailable = true,
    this.isFavourite = false,
    required this.criticsScore,
    required this.image,
  });
}
