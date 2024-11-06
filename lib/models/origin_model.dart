import 'package:json_annotation/json_annotation.dart';

part 'origin_model.g.dart';

@JsonSerializable()
class OriginModel {
  final String country;
  final String city;

  OriginModel({required this.country, required this.city});

  factory OriginModel.fromJson(Map<String, dynamic> json) =>
      _$OriginModelFromJson(json);
  Map<String, dynamic> toJson() => _$OriginModelToJson(this);
}
