import 'package:get/get.dart';
import 'package:wine_shop/models/wine_model.dart';

class AppController extends GetxController {
  List<String> categoryList = ['Type', 'Style', 'Countries', 'Grape', 'Region'];

  List<String> wineColorList = [
    'Red wines',
    'White wines',
    'Rose wines',
  ];

  List<WineModel> wineList = [
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
  ];
}
