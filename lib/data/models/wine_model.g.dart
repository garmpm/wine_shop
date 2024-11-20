// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WineModel _$WineModelFromJson(Map<String, dynamic> json) => WineModel(
      name: json['name'] as String,
      category: json['type'] as String,
      origin: OriginModel.fromJson(json['from'] as Map<String, dynamic>),
      price: (json['price_usd'] as num).toInt(),
      bottleSize: json['bottle_size'] as String,
      isAvailable: json['isAvailable'] as bool? ?? true,
      isFavourite: json['isFavourite'] as bool? ?? false,
      criticsScore: (json['critic_score'] as num).toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$WineModelToJson(WineModel instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.category,
      'from': instance.origin,
      'price_usd': instance.price,
      'bottle_size': instance.bottleSize,
      'isAvailable': instance.isAvailable,
      'isFavourite': instance.isFavourite,
      'critic_score': instance.criticsScore,
      'image': instance.image,
    };
