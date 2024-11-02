import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/price/table_player_price.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/price/model/player_old_price.dart';
import 'package:core_domain/src/domain/price/model/player_price.dart';
import 'package:core_domain/src/domain/price/price_repository.dart';
import 'package:injectable/injectable.dart';

const _itemsPerPage = 10;

@Injectable(as: PriceRepository)
class PriceRepositoryImpl extends PriceRepository {
  PriceRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Result<PlayerPrice>> getPlayerPrice(int playerId) async {
    final response = await _apiClient.dio.get(
      'https://www.fut.gg/api/fut/player-prices/25/$playerId',
    );

    if (response.statusCode != 200) {
      return Failure(exception: Exception('Failed to get player price'));
    }

    if (response.data == null) {
      return Failure(exception: Exception('Player price not found'));
    }

    final player = PlayerPrice.fromMap(
      (response.data as Map<String, dynamic>)['data'],
    );
    return Success(data: player);
  }

  @override
  Future<Result<List<PlayerOldPrice>>> getOldPlayerPrice(
    List<int> eaIds,
  ) async {
    try {
      final pricesResponse = await supabase
          .from(TablePlayerPrice.tablePlayerPrice)
          .select()
          .inFilter(TablePlayerPrice.eaId, eaIds);

      final prices = mapPrices(pricesResponse);
      return Success(data: prices);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<PlayerOldPrice> mapPrices(List<Map<String, dynamic>> pricesResponse) {
    return pricesResponse
        .map((priceJson) => PlayerOldPrice.fromMap(priceJson))
        .toList();
  }

  @override
  Future<Result<List<PlayerOldPrice>>> getCheapestPricesByRating({
    required int page,
    required int rating,
  }) async {
    final start = page * _itemsPerPage;
    final end = ((page + 1) * _itemsPerPage) - 1;

    try {
      final pricesResponse = await supabase
          .from(TablePlayerPrice.tablePlayerPrice)
          .select()
          .eq(TablePlayerPrice.overall, rating)
          .order(TablePlayerPrice.price, ascending: true)
          .range(start, end);

      final prices = mapPrices(pricesResponse);
      return Success(data: prices);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }
}
