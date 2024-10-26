import 'package:dart_mappable/dart_mappable.dart';

part 'rarity_squad.mapper.dart';

@MappableClass()
class RaritySquad with RaritySquadMappable {
  const RaritySquad({
    required this.id,
    required this.name,
    required this.rarityGroupId,
    required this.color,
    required this.releaseDate,
    required this.imagePath,
  });

  final int id;
  final String name;
  final int rarityGroupId;
  final String color;
  final String imagePath;
  final DateTime releaseDate;

  static const fromMap = RaritySquadMapper.fromMap;
}
