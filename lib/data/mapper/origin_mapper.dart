import 'package:wine_shop/data/models/origin_model.dart';
import 'package:wine_shop/domain/entities/origin_entity.dart';

class OriginMapper {
  static OriginEntity mapOriginModelToEntity(OriginModel i) {
    return OriginEntity(country: i.country, city: i.city);
  }
}
