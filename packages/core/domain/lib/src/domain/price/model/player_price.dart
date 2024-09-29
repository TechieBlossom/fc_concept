import 'package:dart_mappable/dart_mappable.dart';

part 'player_price.mapper.dart';

@MappableClass()
class PlayerPrice with PlayerPriceMappable {
  PlayerPrice({
    required this.currentPrice,
    required this.momentum,
    required this.overview,
  });

  final CurrentPrice currentPrice;
  final Momentum momentum;
  final Overview overview;

  static const fromMap = PlayerPriceMapper.fromMap;
}

@MappableClass()
class CurrentPrice with CurrentPriceMappable {
  CurrentPrice({
    required this.price,
    required this.priceUpdatedAt,
  });

  final int price;
  final DateTime priceUpdatedAt;

  static const fromMap = CurrentPriceMapper.fromMap;
}

@MappableClass()
class Momentum with MomentumMappable {
  Momentum({
    required this.lowestBin,
    required this.highestBin,
  });

  final int lowestBin;
  final int highestBin;

  static const fromMap = MomentumMapper.fromMap;
}

@MappableClass()
class Overview with OverviewMappable {
  Overview({
    required this.discardValue,
  });

  final int discardValue;

  static const fromMap = MomentumMapper.fromMap;
}
