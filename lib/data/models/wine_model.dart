import 'package:json_annotation/json_annotation.dart';
import 'package:wine_shop/data/models/origin_model.dart';

part 'wine_model.g.dart';

@JsonSerializable()
class WineModel {
  String name;
  @JsonKey(name: "type")
  String category;
  @JsonKey(name: 'from')
  OriginModel origin;
  @JsonKey(name: "price_usd")
  int price;
  @JsonKey(name: 'bottle_size')
  String bottleSize;
  bool isAvailable;
  bool isFavourite;
  @JsonKey(name: 'critic_score')
  int criticsScore;
  String image;
  WineModel({
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
  factory WineModel.fromJson(Map<String, dynamic> json) =>
      _$WineModelFromJson(json);
  Map<String, dynamic> toJson() => _$WineModelToJson(this);
}
