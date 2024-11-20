import 'package:wine_shop/data/data_sources/wine_shop_data_source.dart';
import 'package:wine_shop/data/mapper/wine_mapper.dart';
import 'package:wine_shop/data/mapper/wine_tags_mapper.dart';
import 'package:wine_shop/data/models/wine_model.dart';
import 'package:wine_shop/data/models/wine_tags_model.dart';
import 'package:wine_shop/domain/entities/wine_entity.dart';
import 'package:wine_shop/domain/entities/wine_tag_entity.dart';
import 'package:wine_shop/domain/repository/wine_shop_repository.dart';

class WineShopRepositoryImpl implements WineShopRepository {
  final WineShopDataSource wineShopDataSource;
  WineShopRepositoryImpl(this.wineShopDataSource);

  @override
  Future<List<WineTagEntity>> getTags() async {
    Map<String, dynamic> data = await wineShopDataSource.getTags();
    List<WineTagEntity> tagList = (data["wines_by"] as List<dynamic>)
        .map((e) => WineTagMapper.mapTagModelToEntity(WineTagModel.fromJson(e)))
        .toList();
    return tagList;
  }

  @override
  Future<List<WineEntity>> getWine() async {
    Map<String, dynamic> data = await wineShopDataSource.getWine();
    List<WineEntity> wineList = (data["carousel"] as List<dynamic>)
        .map((e) => WineMapper.mapWineModelToEntity(WineModel.fromJson(e)))
        .toList();
    return wineList;
  }
}
