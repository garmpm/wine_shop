import 'dart:convert';

import 'package:flutter/services.dart';

abstract class WineShopDataSource {
  Future<Map<String, dynamic>> loadJsonFromAssets(String filePath);

  Future<Map<String, dynamic>> getTags();

  Future<Map<String, dynamic>> getWine();
}

class WineShopDataSourceImpl implements WineShopDataSource {
  @override
  Future<Map<String, dynamic>> loadJsonFromAssets(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    return jsonDecode(jsonString);
  }

  @override
  Future<Map<String, dynamic>> getTags() async {
    Map<String, dynamic> data =
        await loadJsonFromAssets('assets/data/wine.json');
    return data;
  }

  @override
  Future<Map<String, dynamic>> getWine() async {
    Map<String, dynamic> data =
        await loadJsonFromAssets('assets/data/wine.json');
    return data;
  }
}
