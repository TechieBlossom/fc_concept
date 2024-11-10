import 'package:cached_annotation/cached_annotation.dart';
import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/price/table_player_price.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/price/model/player_old_price.dart';
import 'package:core_domain/src/domain/price/model/player_price.dart';
import 'package:core_domain/src/domain/price/price_repository.dart';
import 'package:injectable/injectable.dart';

part 'price_repository_impl.cached.dart';

const _cacheTTL = 1 * 60 * 60; // 1 hour

const _itemsPerPage = 10;

@LazySingleton(as: PriceRepository)
@WithCache()
abstract mixin class PriceRepositoryImpl
    implements PriceRepository, _$PriceRepositoryImpl {
  @factoryMethod
  factory PriceRepositoryImpl(ApiClient _apiClient) = _PriceRepositoryImpl;

  @override
  Future<Result<PlayerPrice>> getPlayerPrice(int playerId) async {
    try {
      final response = await _getPlayerPrice(playerId);
      final player = PlayerPrice.fromMap(
        (response as Map<String, dynamic>)['data'] as Map<String, dynamic>,
      );
      return Success(data: player);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<dynamic> _getPlayerPrice(int playerId) async {
    final response = await _apiClient.dio.get(
      'https://www.fut.gg/api/fut/player-prices/25/$playerId',
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get player price');
    }

    if (response.data == null) {
      throw Exception('Player price not found');
    }

    return response.data;
  }

  @override
  Future<Result<List<PlayerOldPrice>>> getOldPlayerPrice(
    List<int> eaIds,
  ) async {
    try {
      final rawResponse = await _getOldPlayerPrice(eaIds);
      final prices = mapPrices(rawResponse);
      return Success(data: prices);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  // TODO: Looks like this is not working. The response is not being cached.
  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getOldPlayerPrice(List<int> eaIds) async {
    try {
      final pricesResponse = await supabase
          .from(TablePlayerPrice.tablePlayerPrice)
          .select()
          .inFilter(TablePlayerPrice.eaId, eaIds);

      return pricesResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Result<List<PlayerOldPrice>>> getCheapestPricesByRating({
    required int page,
    required int rating,
  }) async {
    try {
      final rawResponse = await _getCheapestPricesByRating(
        page: page,
        rating: rating,
      );

      final prices = mapPrices(rawResponse);
      return Success(data: prices);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getCheapestPricesByRating({
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

      return pricesResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  List<PlayerOldPrice> mapPrices(List<dynamic> pricesResponse) {
    return pricesResponse
        .map(
          (priceJson) =>
              PlayerOldPrice.fromMap(priceJson as Map<String, dynamic>),
        )
        .toList();
  }
}
