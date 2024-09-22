import 'package:dart_mappable/dart_mappable.dart';

part 'club.mapper.dart';

@MappableClass()
class Club with ClubMappable {
  const Club({
    required this.eaId,
    required this.name,
    required this.leagueEaId,
    required this.isWomen,
    required this.isIconClub,
    required this.pastAndPresentHighlightedPlayerItemEaIds,
    required this.imagePath,
    required this.lightImagePath,
  });

  final int eaId;
  final String name;
  final int? leagueEaId;
  final bool? isWomen;
  final bool? isIconClub;
  final List<int>? pastAndPresentHighlightedPlayerItemEaIds;
  final String? imagePath;
  final String? lightImagePath;

  static const fromMap = ClubMapper.fromMap;
}
