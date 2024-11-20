import 'package:wine_shop/domain/entities/wine_entity.dart';
import 'package:wine_shop/domain/entities/wine_tag_entity.dart';

abstract class WineShopRepository {
  Future<List<WineTagEntity>> getTags();
  Future<List<WineEntity>> getWine();
}
