import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wine_shop/models/wine_model.dart';
import 'package:wine_shop/models/wine_tags_model.dart';

class AppController extends GetxController {
  List<String> categoryList = ['Type', 'Style', 'Countries', 'Grape', 'Region'];

  List<String> wineColorList = [
    'Red wines',
    'White wines',
    'Rose wines',
  ];

  //RxList<WineModel> wineList = RxList();

  Future<Map<String, dynamic>> loadJsonFromAssets(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    return jsonDecode(jsonString);
  }

  Future<List<WineTagModel>> getTags() async {
    Map<String, dynamic> data =
        await loadJsonFromAssets('assets/data/wine.json');
    List<WineTagModel> tagList = (data["wines_by"] as List<dynamic>)
        .map((e) => WineTagModel.fromJson(e))
        .toList();
    return tagList;
  }

  Future<List<WineModel>> getWine() async {
    Map<String, dynamic> data =
        await loadJsonFromAssets('assets/data/wine.json');
    List<WineModel> wineList = (data["carousel"] as List<dynamic>)
        .map((e) => WineModel.fromJson(e))
        .toList();
    return wineList;
  }

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
