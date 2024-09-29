import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/price/model/player_price.dart';
import 'package:core_domain/src/domain/price/price_repository.dart';
import 'package:injectable/injectable.dart';

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
}
