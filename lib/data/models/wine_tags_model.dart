import 'package:json_annotation/json_annotation.dart';

part "wine_tags_model.g.dart";

@JsonSerializable()
class WineTagModel {
  String tag;
  String name;
  WineTagModel({required this.tag, required this.name});

  factory WineTagModel.fromJson(Map<String, dynamic> json) =>
      _$WineTagModelFromJson(json);
  Map<String, dynamic> toJson() => _$WineTagModelToJson(this);
}
