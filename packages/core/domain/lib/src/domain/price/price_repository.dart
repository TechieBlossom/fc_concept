import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/price/model/player_price.dart';

abstract class PriceRepository {
  Future<Result<PlayerPrice>> getPlayerPrice(int playerId);
}