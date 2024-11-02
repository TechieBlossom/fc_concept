import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/use_case/get_players_by_ea_ids_use_case.dart';
import 'package:core_domain/src/domain/price/use_case/get_cheapest_prices_by_rating_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCheapestPlayersByRatingUseCase {
  GetCheapestPlayersByRatingUseCase(
    this._getCheapestPricesByRatingUseCase,
    this._getPlayersByEaIdsUseCase,
  );

  final GetCheapestPricesByRatingUseCase _getCheapestPricesByRatingUseCase;
  final GetPlayersByEaIdsUseCase _getPlayersByEaIdsUseCase;

  Future<List<Player>?> call({
    required int rating,
    int page = 0,
  }) async {
    final pricesResult = await _getCheapestPricesByRatingUseCase(
      rating: rating,
      page: page,
    );
    switch (pricesResult) {
      case Success(data: final prices):
        final playerIds = prices.map((price) => price.eaId).toList();
        final playersResponse =
            await _getPlayersByEaIdsUseCase(eaIds: playerIds);
        switch (playersResponse) {
          case Success(data: final players):
            final updatedPlayers = players?.map((player) {
              final price =
                  prices.firstWhere((price) => price.eaId == player.eaId);
              return player.copyWith(price: price);
            }).toList();
            return updatedPlayers
              ?..sort(
                (a, b) => a.price!.price?.compareTo(b.price!.price ?? 0) ?? 0,
              );
          case Failure(exception: final exception):
            if (kDebugMode) {
              print(exception);
            }
            return [];
        }
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
        return [];
    }
  }
}
