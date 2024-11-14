import 'package:core_analytics/analytics.dart';
import 'package:core_domain/src/data/clubs/table_club.dart';
import 'package:core_domain/src/data/leagues/table_league.dart';
import 'package:core_domain/src/data/nations/table_nation.dart';
import 'package:core_domain/src/data/players/table_player.dart';
import 'package:core_domain/src/data/positions/table_position.dart';
import 'package:core_domain/src/data/rarities/table_rarity.dart';
import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/leagues/model/league.dart';
import 'package:core_domain/src/domain/nations/model/nation.dart';
import 'package:core_domain/src/domain/players/model/accelerate_type.dart';
import 'package:core_domain/src/domain/players/model/accelerate_types.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/price/model/player_old_price.dart';
import 'package:core_domain/src/domain/rarity/model/rarity.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'player.mapper.dart';

@MappableClass()
class Player with PlayerMappable, AnalyticsEventParameters {
  const Player({
    required this.eaId,
    required this.basePlayerEaId,
    this.commonName,
    this.firstName,
    this.lastName,
    required this.overall,
    required this.rarity,
    required this.imagePath,
    this.club,
    this.nation,
    this.league,
    this.price,
    this.height,
    this.weight,
    this.dateOfBirth,
    this.position,
    this.alternativePositionIds,
    this.skillMoves,
    this.weakFoot,
    this.foot,
    this.gender,
    this.playStyles,
    this.playStylesPlus,
    this.rolesPlus,
    this.rolesPlusPlus,
    this.isSbcItem = false,
    this.isObjectiveItem = false,
    this.accelerateType,
    this.accelerateTypes,
    this.facePace,
    this.faceShooting,
    this.facePassing,
    this.faceDribbling,
    this.faceDefending,
    this.facePhysicality,
    this.gkFaceDiving,
    this.gkFaceHandling,
    this.gkFaceKicking,
    this.gkFaceReflexes,
    this.gkFaceSpeed,
    this.gkFacePositioning,
    this.attributeAcceleration,
    this.attributeSprintSpeed,
    this.attributeAgility,
    this.attributeBalance,
    this.attributeJumping,
    this.attributeStamina,
    this.attributeStrength,
    this.attributeReactions,
    this.attributeAggression,
    this.attributeComposure,
    this.attributeInterceptions,
    this.attributePositioning,
    this.attributeVision,
    this.attributeBallControl,
    this.attributeCrossing,
    this.attributeDribbling,
    this.attributeFinishing,
    this.attributeFkAccuracy,
    this.attributeHeadingAccuracy,
    this.attributeLongPassing,
    this.attributeShortPassing,
    this.attributeShotPower,
    this.attributeLongShots,
    this.attributeDefensiveAwareness,
    this.attributeStandingTackle,
    this.attributeSlidingTackle,
    this.attributeVolleys,
    this.attributeCurve,
    this.attributePenalties,
    this.attributeGkDiving,
    this.attributeGkHandling,
    this.attributeGkKicking,
    this.attributeGkReflexes,
    this.attributeGkPositioning,
    this.hasPrice = false,
  });

  final int eaId;
  final int basePlayerEaId;
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
  final PlayerOldPrice? price;
  final int? height;
  final int? weight;
  @MappableField(key: TablePosition.tablePosition)
  final Position? position;
  final List<int>? alternativePositionIds;
  @MappableField(key: TablePlayer.playStyles)
  final List<int>? playStyles;
  @MappableField(key: TablePlayer.playStylesPlus)
  final List<int>? playStylesPlus;
  final List<int>? rolesPlus;
  final List<int>? rolesPlusPlus;
  final int? skillMoves;
  final int? weakFoot;
  final int? foot;
  final int? gender;
  final DateTime? dateOfBirth;
  final bool isSbcItem;
  final bool isObjectiveItem;

  final AccelerateType? accelerateType;
  final AccelerateTypes? accelerateTypes;
  final int? facePace;
  final int? faceShooting;
  final int? facePassing;
  final int? faceDribbling;
  final int? faceDefending;
  final int? facePhysicality;
  final int? gkFaceDiving;
  final int? gkFaceHandling;
  final int? gkFaceKicking;
  final int? gkFaceReflexes;
  final int? gkFaceSpeed;
  final int? gkFacePositioning;

  final int? attributeAcceleration;
  final int? attributeSprintSpeed;
  final int? attributeAgility;
  final int? attributeBalance;
  final int? attributeJumping;
  final int? attributeStamina;
  final int? attributeStrength;
  final int? attributeReactions;
  final int? attributeAggression;
  final int? attributeComposure;
  final int? attributeInterceptions;
  final int? attributePositioning;
  final int? attributeVision;
  final int? attributeBallControl;
  final int? attributeCrossing;
  final int? attributeDribbling;
  final int? attributeFinishing;
  final int? attributeFkAccuracy;
  final int? attributeHeadingAccuracy;
  final int? attributeLongPassing;
  final int? attributeShortPassing;
  final int? attributeShotPower;
  final int? attributeLongShots;
  final int? attributeStandingTackle;
  final int? attributeDefensiveAwareness;
  final int? attributeSlidingTackle;
  final int? attributeVolleys;
  final int? attributeCurve;
  final int? attributePenalties;
  final int? attributeGkDiving;
  final int? attributeGkHandling;
  final int? attributeGkKicking;
  final int? attributeGkReflexes;
  final int? attributeGkPositioning;

  final bool hasPrice;

  static const fromMap = PlayerMapper.fromMap;

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

  bool get isGk => position?.shortLabel == 'GK';

  @override
  Map<String, Object> get analyticsParameters => {
        'id': eaId,
        'name': commonName ?? '',
      };
}
