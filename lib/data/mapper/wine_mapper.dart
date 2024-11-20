import 'package:wine_shop/data/mapper/origin_mapper.dart';
import 'package:wine_shop/data/models/wine_model.dart';
import 'package:wine_shop/domain/entities/wine_entity.dart';

class WineMapper {
  static WineEntity mapWineModelToEntity(WineModel i) {
    return WineEntity(
        name: i.name,
        category: i.category,
        origin: OriginMapper.mapOriginModelToEntity(i.origin),
        price: i.price,
        bottleSize: i.bottleSize,
        criticsScore: i.criticsScore,
        image: i.image);
  }
}
