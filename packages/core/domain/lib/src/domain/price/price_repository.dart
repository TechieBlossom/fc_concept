import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/price/model/player_old_price.dart';
import 'package:core_domain/src/domain/price/model/player_price.dart';

abstract class PriceRepository {
  Future<Result<PlayerPrice>> getPlayerPrice(int playerId);

  Future<Result<List<PlayerOldPrice>>> getOldPlayerPrice(List<int> eaIds);

  Future<Result<List<PlayerOldPrice>>> getCheapestPricesByRating({
    required int page,
    required int rating,
  });
}
