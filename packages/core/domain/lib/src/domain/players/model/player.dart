import 'package:core_domain/src/data/clubs/table_club.dart';
import 'package:core_domain/src/data/leagues/table_league.dart';
import 'package:core_domain/src/data/nations/table_nation.dart';
import 'package:core_domain/src/data/positions/table_position.dart';
import 'package:core_domain/src/data/rarities/table_rarity.dart';
import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/leagues/model/league.dart';
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
    this.league,
    this.height,
    this.weight,
    this.dateOfBirth,
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
  @MappableField(key: TableLeague.tableLeague)
  final League? league;
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
  final DateTime? dateOfBirth;

  static const fromJson = PlayerMapper.fromMap;

  int? get age {
    if (dateOfBirth == null) {
      return null;
    }
    return DateTime.now().year - (dateOfBirth!.year);
  }

  String? heightInString() {
    if (height == null) {
      return null;
    }
    final feet = height! ~/ 12;
    final inches = height! % 12;
    return '$height cm ($feet\' $inches")';
  }

  String? weightInString() {
    if (weight == null) {
      return null;
    }
    final inLbs = (weight! * 2.205).ceil();
    return '$weight kg ($inLbs lbs)';
  }

  String? footInString() {
    if (foot == null) {
      return null;
    }
    return foot == 1 ? 'Right' : 'Left';
  }
}
