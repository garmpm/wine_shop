import 'package:wine_shop/domain/entities/wine_tag_entity.dart';
import 'package:wine_shop/domain/repository/wine_shop_repository.dart';

class GetTagsUseCase {
  final WineShopRepository repository;
  GetTagsUseCase(this.repository);

  Future<List<WineTagEntity>> call() {
    return repository.getTags();
  }
}
