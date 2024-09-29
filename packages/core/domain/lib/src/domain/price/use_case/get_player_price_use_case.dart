import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/price/model/player_price.dart';
import 'package:core_domain/src/domain/price/price_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPlayerPriceUseCase {
  GetPlayerPriceUseCase(this._priceRepository);

  final PriceRepository _priceRepository;

  Future<Result<PlayerPrice>> call(int playerId) async {
    return _priceRepository.getPlayerPrice(playerId);
  }
}
