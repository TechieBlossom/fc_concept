import 'package:dart_mappable/dart_mappable.dart';

part 'rarity.mapper.dart';

@MappableClass()
class Rarity with RarityMappable {
  const Rarity({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  static const fromJson = RarityMapper.fromMap;
}
