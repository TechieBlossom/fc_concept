import 'package:core_domain/src/data/clubs/table_club.dart';
import 'package:core_domain/src/data/nations/table_nation.dart';
import 'package:core_domain/src/data/positions/table_position.dart';
import 'package:core_domain/src/data/rarities/table_rarity.dart';
import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/nations/model/nation.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/rarity/model/rarity.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'player.mapper.dart';

@MappableClass()
class Player with PlayerMappable {
  const Player({
    required this.id,
    this.commonName,
    this.firstName,
    this.lastName,
    required this.overall,
    required this.rarity,
    required this.imagePath,
    this.club,
    this.nation,
    this.height,
    this.weight,
    this.position,
    this.skillMoves,
    this.weakFoot,
    this.foot,
    this.gender,
    this.rolesPlus,
    this.facePace,
    this.faceShooting,
    this.facePassing,
    this.faceDribbling,
    this.faceDefending,
    this.facePhysicality,
  });

  final int id;
  final String? commonName;
  final String? firstName;
  final String? lastName;
  final int overall;
  @MappableField(key: TableRarity.tableRarity)
  final Rarity rarity;
  final String imagePath;
  @MappableField(key: TableClub.tableClub)
  final Club? club;
  @MappableField(key: TableNation.tableNation)
  final Nation? nation;
  final int? height;
  final int? weight;
  @MappableField(key: TablePosition.tablePosition)
  final Position? position;
  final List<int>? rolesPlus;
  final int? skillMoves;
  final int? weakFoot;
  final int? foot;
  final int? facePace;
  final int? faceShooting;
  final int? facePassing;
  final int? faceDribbling;
  final int? faceDefending;
  final int? facePhysicality;
  final int? gender;

  static const fromJson = PlayerMapper.fromMap;
}
