import 'package:dart_mappable/dart_mappable.dart';

part 'rarity.mapper.dart';

@MappableClass()
class Rarity with RarityMappable {
  const Rarity({
    required this.eaId,
    required this.name,
    required this.dominantColor,
    required this.imagePath,
    required this.compactImagePath,
    required this.isSpecial,
    this.isBrightColorScheme = false,
    required this.textColor,
    this.lineColor,
    this.shadowColor,
    this.numberOfPlayers = 0,
  });

  final int eaId;
  final String name;
  final String dominantColor;
  final String imagePath;
  final String compactImagePath;
  final bool isSpecial;
  final bool isBrightColorScheme;
  final List<String>? textColor;
  final List<String>? lineColor;
  final List<String>? shadowColor;
  final int numberOfPlayers;

  static const fromJson = RarityMapper.fromMap;
}
