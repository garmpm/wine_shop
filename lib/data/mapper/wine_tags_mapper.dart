import 'package:wine_shop/data/models/wine_tags_model.dart';
import 'package:wine_shop/domain/entities/wine_tag_entity.dart';

class WineTagMapper {
  static WineTagEntity mapTagModelToEntity(WineTagModel i) {
    return WineTagEntity(tag: i.tag, name: i.name);
  }
}
