import 'package:wine_shop/domain/entities/wine_entity.dart';
import 'package:wine_shop/domain/repository/wine_shop_repository.dart';

class GetWinesUseCase {
  final WineShopRepository repository;
  GetWinesUseCase(this.repository);

  Future<List<WineEntity>> call() {
    return repository.getWine();
  }
}
