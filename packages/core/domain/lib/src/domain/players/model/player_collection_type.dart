import 'package:dart_mappable/dart_mappable.dart';

part 'player_collection_type.mapper.dart';

@MappableEnum()
enum PlayerCollectionType {
  rarity,
  role,
  rolePlus,
  playStyle,
  playStylePlus,
  league,
  club,
  nation,
  position,
}
