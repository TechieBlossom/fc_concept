import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/price/model/player_old_price.dart';
import 'package:core_domain/src/domain/price/price_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPlayerOldPricesUseCase {
  GetPlayerOldPricesUseCase(this._priceRepository);

  final PriceRepository _priceRepository;

  Future<Result<List<PlayerOldPrice>>> call(List<int> eaIds) async {
    return _priceRepository.getOldPlayerPrice(eaIds);
  }
}
