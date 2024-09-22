import 'package:dart_mappable/dart_mappable.dart';

part 'club_old.mapper.dart';

@Deprecated('Use Club instead')
@MappableClass()
class ClubOld with ClubOldMappable {
  const ClubOld({
    required this.id,
    required this.name,
    required this.league,
  });

  final int? id;
  final String? name;
  final int? league;

  static const fromMap = ClubOldMapper.fromMap;
}
