import 'package:core_domain/domain.dart';
import 'package:core_domain/src/domain/price/price_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCheapestPricesByRatingUseCase {
  GetCheapestPricesByRatingUseCase(this._priceRepository);

  final PriceRepository _priceRepository;

  Future<Result<List<PlayerOldPrice>>> call({
    required int page,
    required int rating,
  }) async {
    return _priceRepository.getCheapestPricesByRating(
      page: page,
      rating: rating,
    );
  }
}
