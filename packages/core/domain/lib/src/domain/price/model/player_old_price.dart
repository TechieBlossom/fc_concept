import 'package:dart_mappable/dart_mappable.dart';

part 'player_old_price.mapper.dart';

@MappableClass()
class PlayerOldPrice with PlayerOldPriceMappable {
  PlayerOldPrice({
    required this.eaId,
    required this.price,
    required this.isExtinct,
    required this.isSbc,
  });

  final int eaId;
  final double? price;
  final bool isExtinct;
  final bool isSbc;

  static const fromMap = PlayerOldPriceMapper.fromMap;
}
