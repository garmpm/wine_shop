import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wine_shop/data/data_sources/wine_shop_data_source.dart';
import 'package:wine_shop/data/repository/wine_shop_repository_impl.dart';
import 'package:wine_shop/domain/entities/wine_entity.dart';
import 'package:wine_shop/domain/entities/wine_tag_entity.dart';
import 'package:wine_shop/domain/use_cases/get_tags_use_case.dart';
import 'package:wine_shop/domain/use_cases/get_wines_use_case.dart';

class HomeController extends GetxController {
  List<String> categoryList = ['Type', 'Style', 'Countries', 'Grape', 'Region'];

  List<String> wineColorList = [
    'Red wines',
    'White wines',
    'Rose wines',
  ];
  RxBool isLoading = RxBool(false);
  // RxList<WineTagEntity> tagList = RxList();
  // RxList<WineEntity> wineList = RxList();

  GetTagsUseCase getTagsUseCase =
      GetTagsUseCase(WineShopRepositoryImpl(WineShopDataSourceImpl()));
  GetWinesUseCase getWinesUseCase =
      GetWinesUseCase(WineShopRepositoryImpl(WineShopDataSourceImpl()));

  //RxList<WineModel> wineList = RxList();

  Future<Map<String, dynamic>> loadJsonFromAssets(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    return jsonDecode(jsonString);
  }

  Future<List<WineTagEntity>> getTags() async {
    return getTagsUseCase.call();
  }

  Future<List<WineEntity>> getWine() async {
    return getWinesUseCase.call();
  }

  RxList<WineTagEntity> tagList = RxList();
  RxList<WineEntity> wineList = RxList();

  /*List<WineModel> wineList = [
    WineModel(
      name: 'Ocone Bozzovich Beneventano Bianco IGT,',
      category: "Red wine",
      subCategory: "Green and Flinty",
      origin: "Champagne Blanc de Blancs, France",
      price: 325523,
      vesselType: "Bottle (750ml)",
      criticsScore: 94,
      image: 'assets/images/wine1.png',
    ),
    WineModel(
      name: '2021 Petit Chablis - Passy Le Clou',
      category: "White wine",
      subCategory: "Green and Flinty",
      origin: "Champagne Blanc de Blancs, France",
      price: 325523,
      vesselType: "Bottle (750ml)",
      criticsScore: 94,
      image: "assets/images/wine2.png",
    ),
    WineModel(
      name: 'Philippe Fontaine Champagne Brut Rosé, Rosé de Saignée, NV',
      category: "Sparkling wine",
      subCategory: "Green and Flinty",
      origin: "Champagne Blanc de Blancs, France",
      price: 325523,
      vesselType: "Bottle (750ml)",
      isAvailable: false,
      isFavourite: true,
      criticsScore: 94,
      image: "assets/images/wine3.png",
    ),
    WineModel(
      name: '2021 Cicada\'s Song Rosé',
      category: "Sparkling wine",
      subCategory: "Green and Flinty",
      origin: "Champagne Blanc de Blancs, France",
      price: 325523,
      vesselType: "Bottle (750ml)",
      criticsScore: 94,
      image: "assets/images/wine4.png",
    ),
  ]; */
}
