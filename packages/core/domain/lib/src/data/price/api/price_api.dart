import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'price_api.g.dart';

@RestApi(baseUrl: 'https://www.fut.gg/api/fut')
abstract class PriceApi {
  factory PriceApi(Dio dio) = _PriceApi;

  @GET('/player-prices/25/{playerId}')
  Future<dynamic> getPlayerPrice(@Path('playerId') int playerId);
}
