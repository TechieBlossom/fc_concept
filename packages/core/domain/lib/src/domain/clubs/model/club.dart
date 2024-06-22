import 'package:dart_mappable/dart_mappable.dart';

part 'club.mapper.dart';

@MappableClass()
class Club with ClubMappable {
  const Club({
    required this.id,
    required this.name,
    required this.league,
  });

  final int? id;
  final String? name;
  final int? league;

  static const fromMap = ClubMapper.fromMap;
}
