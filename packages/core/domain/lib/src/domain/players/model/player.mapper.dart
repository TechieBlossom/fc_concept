// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'player.dart';

class PlayerMapper extends ClassMapperBase<Player> {
  PlayerMapper._();

  static PlayerMapper? _instance;
  static PlayerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerMapper._());
      RarityMapper.ensureInitialized();
      ClubMapper.ensureInitialized();
      NationMapper.ensureInitialized();
      LeagueMapper.ensureInitialized();
      PlayerOldPriceMapper.ensureInitialized();
      PositionMapper.ensureInitialized();
      AccelerateTypeMapper.ensureInitialized();
      AccelerateTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Player';

  static int _$eaId(Player v) => v.eaId;
  static const Field<Player, int> _f$eaId = Field('eaId', _$eaId);
  static int _$basePlayerEaId(Player v) => v.basePlayerEaId;
  static const Field<Player, int> _f$basePlayerEaId =
      Field('basePlayerEaId', _$basePlayerEaId);
  static String? _$commonName(Player v) => v.commonName;
  static const Field<Player, String> _f$commonName =
      Field('commonName', _$commonName, opt: true);
  static String? _$firstName(Player v) => v.firstName;
  static const Field<Player, String> _f$firstName =
      Field('firstName', _$firstName, opt: true);
  static String? _$lastName(Player v) => v.lastName;
  static const Field<Player, String> _f$lastName =
      Field('lastName', _$lastName, opt: true);
  static int _$overall(Player v) => v.overall;
  static const Field<Player, int> _f$overall = Field('overall', _$overall);
  static Rarity _$rarity(Player v) => v.rarity;
  static const Field<Player, Rarity> _f$rarity =
      Field('rarity', _$rarity, key: r'table_core_rarity');
  static String _$imagePath(Player v) => v.imagePath;
  static const Field<Player, String> _f$imagePath =
      Field('imagePath', _$imagePath);
  static Club? _$club(Player v) => v.club;
  static const Field<Player, Club> _f$club =
      Field('club', _$club, key: r'table_core_club', opt: true);
  static Nation? _$nation(Player v) => v.nation;
  static const Field<Player, Nation> _f$nation =
      Field('nation', _$nation, key: r'table_core_nation', opt: true);
  static League? _$league(Player v) => v.league;
  static const Field<Player, League> _f$league =
      Field('league', _$league, key: r'table_core_league', opt: true);
  static PlayerOldPrice? _$price(Player v) => v.price;
  static const Field<Player, PlayerOldPrice> _f$price =
      Field('price', _$price, opt: true);
  static int? _$height(Player v) => v.height;
  static const Field<Player, int> _f$height =
      Field('height', _$height, opt: true);
  static int? _$weight(Player v) => v.weight;
  static const Field<Player, int> _f$weight =
      Field('weight', _$weight, opt: true);
  static DateTime? _$dateOfBirth(Player v) => v.dateOfBirth;
  static const Field<Player, DateTime> _f$dateOfBirth =
      Field('dateOfBirth', _$dateOfBirth, opt: true);
  static Position? _$position(Player v) => v.position;
  static const Field<Player, Position> _f$position =
      Field('position', _$position, key: r'table_core_position', opt: true);
  static List<int>? _$alternativePositionIds(Player v) =>
      v.alternativePositionIds;
  static const Field<Player, List<int>> _f$alternativePositionIds =
      Field('alternativePositionIds', _$alternativePositionIds, opt: true);
  static int? _$skillMoves(Player v) => v.skillMoves;
  static const Field<Player, int> _f$skillMoves =
      Field('skillMoves', _$skillMoves, opt: true);
  static int? _$weakFoot(Player v) => v.weakFoot;
  static const Field<Player, int> _f$weakFoot =
      Field('weakFoot', _$weakFoot, opt: true);
  static int? _$foot(Player v) => v.foot;
  static const Field<Player, int> _f$foot = Field('foot', _$foot, opt: true);
  static int? _$gender(Player v) => v.gender;
  static const Field<Player, int> _f$gender =
      Field('gender', _$gender, opt: true);
  static List<int>? _$playStyles(Player v) => v.playStyles;
  static const Field<Player, List<int>> _f$playStyles =
      Field('playStyles', _$playStyles, key: r'playstyles', opt: true);
  static List<int>? _$playStylesPlus(Player v) => v.playStylesPlus;
  static const Field<Player, List<int>> _f$playStylesPlus = Field(
      'playStylesPlus', _$playStylesPlus,
      key: r'playstylesPlus', opt: true);
  static List<int>? _$rolesPlus(Player v) => v.rolesPlus;
  static const Field<Player, List<int>> _f$rolesPlus =
      Field('rolesPlus', _$rolesPlus, opt: true);
  static List<int>? _$rolesPlusPlus(Player v) => v.rolesPlusPlus;
  static const Field<Player, List<int>> _f$rolesPlusPlus =
      Field('rolesPlusPlus', _$rolesPlusPlus, opt: true);
  static bool _$isSbcItem(Player v) => v.isSbcItem;
  static const Field<Player, bool> _f$isSbcItem =
      Field('isSbcItem', _$isSbcItem, opt: true, def: false);
  static bool _$isObjectiveItem(Player v) => v.isObjectiveItem;
  static const Field<Player, bool> _f$isObjectiveItem =
      Field('isObjectiveItem', _$isObjectiveItem, opt: true, def: false);
  static AccelerateType? _$accelerateType(Player v) => v.accelerateType;
  static const Field<Player, AccelerateType> _f$accelerateType =
      Field('accelerateType', _$accelerateType, opt: true);
  static AccelerateTypes? _$accelerateTypes(Player v) => v.accelerateTypes;
  static const Field<Player, AccelerateTypes> _f$accelerateTypes =
      Field('accelerateTypes', _$accelerateTypes, opt: true);
  static int? _$facePace(Player v) => v.facePace;
  static const Field<Player, int> _f$facePace =
      Field('facePace', _$facePace, opt: true);
  static int? _$faceShooting(Player v) => v.faceShooting;
  static const Field<Player, int> _f$faceShooting =
      Field('faceShooting', _$faceShooting, opt: true);
  static int? _$facePassing(Player v) => v.facePassing;
  static const Field<Player, int> _f$facePassing =
      Field('facePassing', _$facePassing, opt: true);
  static int? _$faceDribbling(Player v) => v.faceDribbling;
  static const Field<Player, int> _f$faceDribbling =
      Field('faceDribbling', _$faceDribbling, opt: true);
  static int? _$faceDefending(Player v) => v.faceDefending;
  static const Field<Player, int> _f$faceDefending =
      Field('faceDefending', _$faceDefending, opt: true);
  static int? _$facePhysicality(Player v) => v.facePhysicality;
  static const Field<Player, int> _f$facePhysicality =
      Field('facePhysicality', _$facePhysicality, opt: true);
  static int? _$gkFaceDiving(Player v) => v.gkFaceDiving;
  static const Field<Player, int> _f$gkFaceDiving =
      Field('gkFaceDiving', _$gkFaceDiving, opt: true);
  static int? _$gkFaceHandling(Player v) => v.gkFaceHandling;
  static const Field<Player, int> _f$gkFaceHandling =
      Field('gkFaceHandling', _$gkFaceHandling, opt: true);
  static int? _$gkFaceKicking(Player v) => v.gkFaceKicking;
  static const Field<Player, int> _f$gkFaceKicking =
      Field('gkFaceKicking', _$gkFaceKicking, opt: true);
  static int? _$gkFaceReflexes(Player v) => v.gkFaceReflexes;
  static const Field<Player, int> _f$gkFaceReflexes =
      Field('gkFaceReflexes', _$gkFaceReflexes, opt: true);
  static int? _$gkFaceSpeed(Player v) => v.gkFaceSpeed;
  static const Field<Player, int> _f$gkFaceSpeed =
      Field('gkFaceSpeed', _$gkFaceSpeed, opt: true);
  static int? _$gkFacePositioning(Player v) => v.gkFacePositioning;
  static const Field<Player, int> _f$gkFacePositioning =
      Field('gkFacePositioning', _$gkFacePositioning, opt: true);
  static int? _$attributeAcceleration(Player v) => v.attributeAcceleration;
  static const Field<Player, int> _f$attributeAcceleration =
      Field('attributeAcceleration', _$attributeAcceleration, opt: true);
  static int? _$attributeSprintSpeed(Player v) => v.attributeSprintSpeed;
  static const Field<Player, int> _f$attributeSprintSpeed =
      Field('attributeSprintSpeed', _$attributeSprintSpeed, opt: true);
  static int? _$attributeAgility(Player v) => v.attributeAgility;
  static const Field<Player, int> _f$attributeAgility =
      Field('attributeAgility', _$attributeAgility, opt: true);
  static int? _$attributeBalance(Player v) => v.attributeBalance;
  static const Field<Player, int> _f$attributeBalance =
      Field('attributeBalance', _$attributeBalance, opt: true);
  static int? _$attributeJumping(Player v) => v.attributeJumping;
  static const Field<Player, int> _f$attributeJumping =
      Field('attributeJumping', _$attributeJumping, opt: true);
  static int? _$attributeStamina(Player v) => v.attributeStamina;
  static const Field<Player, int> _f$attributeStamina =
      Field('attributeStamina', _$attributeStamina, opt: true);
  static int? _$attributeStrength(Player v) => v.attributeStrength;
  static const Field<Player, int> _f$attributeStrength =
      Field('attributeStrength', _$attributeStrength, opt: true);
  static int? _$attributeReactions(Player v) => v.attributeReactions;
  static const Field<Player, int> _f$attributeReactions =
      Field('attributeReactions', _$attributeReactions, opt: true);
  static int? _$attributeAggression(Player v) => v.attributeAggression;
  static const Field<Player, int> _f$attributeAggression =
      Field('attributeAggression', _$attributeAggression, opt: true);
  static int? _$attributeComposure(Player v) => v.attributeComposure;
  static const Field<Player, int> _f$attributeComposure =
      Field('attributeComposure', _$attributeComposure, opt: true);
  static int? _$attributeInterceptions(Player v) => v.attributeInterceptions;
  static const Field<Player, int> _f$attributeInterceptions =
      Field('attributeInterceptions', _$attributeInterceptions, opt: true);
  static int? _$attributePositioning(Player v) => v.attributePositioning;
  static const Field<Player, int> _f$attributePositioning =
      Field('attributePositioning', _$attributePositioning, opt: true);
  static int? _$attributeVision(Player v) => v.attributeVision;
  static const Field<Player, int> _f$attributeVision =
      Field('attributeVision', _$attributeVision, opt: true);
  static int? _$attributeBallControl(Player v) => v.attributeBallControl;
  static const Field<Player, int> _f$attributeBallControl =
      Field('attributeBallControl', _$attributeBallControl, opt: true);
  static int? _$attributeCrossing(Player v) => v.attributeCrossing;
  static const Field<Player, int> _f$attributeCrossing =
      Field('attributeCrossing', _$attributeCrossing, opt: true);
  static int? _$attributeDribbling(Player v) => v.attributeDribbling;
  static const Field<Player, int> _f$attributeDribbling =
      Field('attributeDribbling', _$attributeDribbling, opt: true);
  static int? _$attributeFinishing(Player v) => v.attributeFinishing;
  static const Field<Player, int> _f$attributeFinishing =
      Field('attributeFinishing', _$attributeFinishing, opt: true);
  static int? _$attributeFkAccuracy(Player v) => v.attributeFkAccuracy;
  static const Field<Player, int> _f$attributeFkAccuracy =
      Field('attributeFkAccuracy', _$attributeFkAccuracy, opt: true);
  static int? _$attributeHeadingAccuracy(Player v) =>
      v.attributeHeadingAccuracy;
  static const Field<Player, int> _f$attributeHeadingAccuracy =
      Field('attributeHeadingAccuracy', _$attributeHeadingAccuracy, opt: true);
  static int? _$attributeLongPassing(Player v) => v.attributeLongPassing;
  static const Field<Player, int> _f$attributeLongPassing =
      Field('attributeLongPassing', _$attributeLongPassing, opt: true);
  static int? _$attributeShortPassing(Player v) => v.attributeShortPassing;
  static const Field<Player, int> _f$attributeShortPassing =
      Field('attributeShortPassing', _$attributeShortPassing, opt: true);
  static int? _$attributeShotPower(Player v) => v.attributeShotPower;
  static const Field<Player, int> _f$attributeShotPower =
      Field('attributeShotPower', _$attributeShotPower, opt: true);
  static int? _$attributeLongShots(Player v) => v.attributeLongShots;
  static const Field<Player, int> _f$attributeLongShots =
      Field('attributeLongShots', _$attributeLongShots, opt: true);
  static int? _$attributeDefensiveAwareness(Player v) =>
      v.attributeDefensiveAwareness;
  static const Field<Player, int> _f$attributeDefensiveAwareness = Field(
      'attributeDefensiveAwareness', _$attributeDefensiveAwareness,
      opt: true);
  static int? _$attributeStandingTackle(Player v) => v.attributeStandingTackle;
  static const Field<Player, int> _f$attributeStandingTackle =
      Field('attributeStandingTackle', _$attributeStandingTackle, opt: true);
  static int? _$attributeSlidingTackle(Player v) => v.attributeSlidingTackle;
  static const Field<Player, int> _f$attributeSlidingTackle =
      Field('attributeSlidingTackle', _$attributeSlidingTackle, opt: true);
  static int? _$attributeVolleys(Player v) => v.attributeVolleys;
  static const Field<Player, int> _f$attributeVolleys =
      Field('attributeVolleys', _$attributeVolleys, opt: true);
  static int? _$attributeCurve(Player v) => v.attributeCurve;
  static const Field<Player, int> _f$attributeCurve =
      Field('attributeCurve', _$attributeCurve, opt: true);
  static int? _$attributePenalties(Player v) => v.attributePenalties;
  static const Field<Player, int> _f$attributePenalties =
      Field('attributePenalties', _$attributePenalties, opt: true);
  static int? _$attributeGkDiving(Player v) => v.attributeGkDiving;
  static const Field<Player, int> _f$attributeGkDiving =
      Field('attributeGkDiving', _$attributeGkDiving, opt: true);
  static int? _$attributeGkHandling(Player v) => v.attributeGkHandling;
  static const Field<Player, int> _f$attributeGkHandling =
      Field('attributeGkHandling', _$attributeGkHandling, opt: true);
  static int? _$attributeGkKicking(Player v) => v.attributeGkKicking;
  static const Field<Player, int> _f$attributeGkKicking =
      Field('attributeGkKicking', _$attributeGkKicking, opt: true);
  static int? _$attributeGkReflexes(Player v) => v.attributeGkReflexes;
  static const Field<Player, int> _f$attributeGkReflexes =
      Field('attributeGkReflexes', _$attributeGkReflexes, opt: true);
  static int? _$attributeGkPositioning(Player v) => v.attributeGkPositioning;
  static const Field<Player, int> _f$attributeGkPositioning =
      Field('attributeGkPositioning', _$attributeGkPositioning, opt: true);
  static bool _$hasPrice(Player v) => v.hasPrice;
  static const Field<Player, bool> _f$hasPrice =
      Field('hasPrice', _$hasPrice, opt: true, def: false);

  @override
  final MappableFields<Player> fields = const {
    #eaId: _f$eaId,
    #basePlayerEaId: _f$basePlayerEaId,
    #commonName: _f$commonName,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #overall: _f$overall,
    #rarity: _f$rarity,
    #imagePath: _f$imagePath,
    #club: _f$club,
    #nation: _f$nation,
    #league: _f$league,
    #price: _f$price,
    #height: _f$height,
    #weight: _f$weight,
    #dateOfBirth: _f$dateOfBirth,
    #position: _f$position,
    #alternativePositionIds: _f$alternativePositionIds,
    #skillMoves: _f$skillMoves,
    #weakFoot: _f$weakFoot,
    #foot: _f$foot,
    #gender: _f$gender,
    #playStyles: _f$playStyles,
    #playStylesPlus: _f$playStylesPlus,
    #rolesPlus: _f$rolesPlus,
    #rolesPlusPlus: _f$rolesPlusPlus,
    #isSbcItem: _f$isSbcItem,
    #isObjectiveItem: _f$isObjectiveItem,
    #accelerateType: _f$accelerateType,
    #accelerateTypes: _f$accelerateTypes,
    #facePace: _f$facePace,
    #faceShooting: _f$faceShooting,
    #facePassing: _f$facePassing,
    #faceDribbling: _f$faceDribbling,
    #faceDefending: _f$faceDefending,
    #facePhysicality: _f$facePhysicality,
    #gkFaceDiving: _f$gkFaceDiving,
    #gkFaceHandling: _f$gkFaceHandling,
    #gkFaceKicking: _f$gkFaceKicking,
    #gkFaceReflexes: _f$gkFaceReflexes,
    #gkFaceSpeed: _f$gkFaceSpeed,
    #gkFacePositioning: _f$gkFacePositioning,
    #attributeAcceleration: _f$attributeAcceleration,
    #attributeSprintSpeed: _f$attributeSprintSpeed,
    #attributeAgility: _f$attributeAgility,
    #attributeBalance: _f$attributeBalance,
    #attributeJumping: _f$attributeJumping,
    #attributeStamina: _f$attributeStamina,
    #attributeStrength: _f$attributeStrength,
    #attributeReactions: _f$attributeReactions,
    #attributeAggression: _f$attributeAggression,
    #attributeComposure: _f$attributeComposure,
    #attributeInterceptions: _f$attributeInterceptions,
    #attributePositioning: _f$attributePositioning,
    #attributeVision: _f$attributeVision,
    #attributeBallControl: _f$attributeBallControl,
    #attributeCrossing: _f$attributeCrossing,
    #attributeDribbling: _f$attributeDribbling,
    #attributeFinishing: _f$attributeFinishing,
    #attributeFkAccuracy: _f$attributeFkAccuracy,
    #attributeHeadingAccuracy: _f$attributeHeadingAccuracy,
    #attributeLongPassing: _f$attributeLongPassing,
    #attributeShortPassing: _f$attributeShortPassing,
    #attributeShotPower: _f$attributeShotPower,
    #attributeLongShots: _f$attributeLongShots,
    #attributeDefensiveAwareness: _f$attributeDefensiveAwareness,
    #attributeStandingTackle: _f$attributeStandingTackle,
    #attributeSlidingTackle: _f$attributeSlidingTackle,
    #attributeVolleys: _f$attributeVolleys,
    #attributeCurve: _f$attributeCurve,
    #attributePenalties: _f$attributePenalties,
    #attributeGkDiving: _f$attributeGkDiving,
    #attributeGkHandling: _f$attributeGkHandling,
    #attributeGkKicking: _f$attributeGkKicking,
    #attributeGkReflexes: _f$attributeGkReflexes,
    #attributeGkPositioning: _f$attributeGkPositioning,
    #hasPrice: _f$hasPrice,
  };

  static Player _instantiate(DecodingData data) {
    return Player(
        eaId: data.dec(_f$eaId),
        basePlayerEaId: data.dec(_f$basePlayerEaId),
        commonName: data.dec(_f$commonName),
        firstName: data.dec(_f$firstName),
        lastName: data.dec(_f$lastName),
        overall: data.dec(_f$overall),
        rarity: data.dec(_f$rarity),
        imagePath: data.dec(_f$imagePath),
        club: data.dec(_f$club),
        nation: data.dec(_f$nation),
        league: data.dec(_f$league),
        price: data.dec(_f$price),
        height: data.dec(_f$height),
        weight: data.dec(_f$weight),
        dateOfBirth: data.dec(_f$dateOfBirth),
        position: data.dec(_f$position),
        alternativePositionIds: data.dec(_f$alternativePositionIds),
        skillMoves: data.dec(_f$skillMoves),
        weakFoot: data.dec(_f$weakFoot),
        foot: data.dec(_f$foot),
        gender: data.dec(_f$gender),
        playStyles: data.dec(_f$playStyles),
        playStylesPlus: data.dec(_f$playStylesPlus),
        rolesPlus: data.dec(_f$rolesPlus),
        rolesPlusPlus: data.dec(_f$rolesPlusPlus),
        isSbcItem: data.dec(_f$isSbcItem),
        isObjectiveItem: data.dec(_f$isObjectiveItem),
        accelerateType: data.dec(_f$accelerateType),
        accelerateTypes: data.dec(_f$accelerateTypes),
        facePace: data.dec(_f$facePace),
        faceShooting: data.dec(_f$faceShooting),
        facePassing: data.dec(_f$facePassing),
        faceDribbling: data.dec(_f$faceDribbling),
        faceDefending: data.dec(_f$faceDefending),
        facePhysicality: data.dec(_f$facePhysicality),
        gkFaceDiving: data.dec(_f$gkFaceDiving),
        gkFaceHandling: data.dec(_f$gkFaceHandling),
        gkFaceKicking: data.dec(_f$gkFaceKicking),
        gkFaceReflexes: data.dec(_f$gkFaceReflexes),
        gkFaceSpeed: data.dec(_f$gkFaceSpeed),
        gkFacePositioning: data.dec(_f$gkFacePositioning),
        attributeAcceleration: data.dec(_f$attributeAcceleration),
        attributeSprintSpeed: data.dec(_f$attributeSprintSpeed),
        attributeAgility: data.dec(_f$attributeAgility),
        attributeBalance: data.dec(_f$attributeBalance),
        attributeJumping: data.dec(_f$attributeJumping),
        attributeStamina: data.dec(_f$attributeStamina),
        attributeStrength: data.dec(_f$attributeStrength),
        attributeReactions: data.dec(_f$attributeReactions),
        attributeAggression: data.dec(_f$attributeAggression),
        attributeComposure: data.dec(_f$attributeComposure),
        attributeInterceptions: data.dec(_f$attributeInterceptions),
        attributePositioning: data.dec(_f$attributePositioning),
        attributeVision: data.dec(_f$attributeVision),
        attributeBallControl: data.dec(_f$attributeBallControl),
        attributeCrossing: data.dec(_f$attributeCrossing),
        attributeDribbling: data.dec(_f$attributeDribbling),
        attributeFinishing: data.dec(_f$attributeFinishing),
        attributeFkAccuracy: data.dec(_f$attributeFkAccuracy),
        attributeHeadingAccuracy: data.dec(_f$attributeHeadingAccuracy),
        attributeLongPassing: data.dec(_f$attributeLongPassing),
        attributeShortPassing: data.dec(_f$attributeShortPassing),
        attributeShotPower: data.dec(_f$attributeShotPower),
        attributeLongShots: data.dec(_f$attributeLongShots),
        attributeDefensiveAwareness: data.dec(_f$attributeDefensiveAwareness),
        attributeStandingTackle: data.dec(_f$attributeStandingTackle),
        attributeSlidingTackle: data.dec(_f$attributeSlidingTackle),
        attributeVolleys: data.dec(_f$attributeVolleys),
        attributeCurve: data.dec(_f$attributeCurve),
        attributePenalties: data.dec(_f$attributePenalties),
        attributeGkDiving: data.dec(_f$attributeGkDiving),
        attributeGkHandling: data.dec(_f$attributeGkHandling),
        attributeGkKicking: data.dec(_f$attributeGkKicking),
        attributeGkReflexes: data.dec(_f$attributeGkReflexes),
        attributeGkPositioning: data.dec(_f$attributeGkPositioning),
        hasPrice: data.dec(_f$hasPrice));
  }

  @override
  final Function instantiate = _instantiate;

  static Player fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Player>(map);
  }

  static Player fromJson(String json) {
    return ensureInitialized().decodeJson<Player>(json);
  }
}

mixin PlayerMappable {
  String toJson() {
    return PlayerMapper.ensureInitialized().encodeJson<Player>(this as Player);
  }

  Map<String, dynamic> toMap() {
    return PlayerMapper.ensureInitialized().encodeMap<Player>(this as Player);
  }

  PlayerCopyWith<Player, Player, Player> get copyWith =>
      _PlayerCopyWithImpl<Player, Player>(this as Player, $identity, $identity);
  @override
  String toString() {
    return PlayerMapper.ensureInitialized().stringifyValue(this as Player);
  }

  @override
  bool operator ==(Object other) {
    return PlayerMapper.ensureInitialized().equalsValue(this as Player, other);
  }

  @override
  int get hashCode {
    return PlayerMapper.ensureInitialized().hashValue(this as Player);
  }
}

extension PlayerValueCopy<$R, $Out> on ObjectCopyWith<$R, Player, $Out> {
  PlayerCopyWith<$R, Player, $Out> get $asPlayer =>
      $base.as((v, t, t2) => _PlayerCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlayerCopyWith<$R, $In extends Player, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RarityCopyWith<$R, Rarity, Rarity> get rarity;
  ClubCopyWith<$R, Club, Club>? get club;
  NationCopyWith<$R, Nation, Nation>? get nation;
  LeagueCopyWith<$R, League, League>? get league;
  PlayerOldPriceCopyWith<$R, PlayerOldPrice, PlayerOldPrice>? get price;
  PositionCopyWith<$R, Position, Position>? get position;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>?
      get alternativePositionIds;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get playStyles;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get playStylesPlus;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get rolesPlus;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get rolesPlusPlus;
  AccelerateTypesCopyWith<$R, AccelerateTypes, AccelerateTypes>?
      get accelerateTypes;
  $R call(
      {int? eaId,
      int? basePlayerEaId,
      String? commonName,
      String? firstName,
      String? lastName,
      int? overall,
      Rarity? rarity,
      String? imagePath,
      Club? club,
      Nation? nation,
      League? league,
      PlayerOldPrice? price,
      int? height,
      int? weight,
      DateTime? dateOfBirth,
      Position? position,
      List<int>? alternativePositionIds,
      int? skillMoves,
      int? weakFoot,
      int? foot,
      int? gender,
      List<int>? playStyles,
      List<int>? playStylesPlus,
      List<int>? rolesPlus,
      List<int>? rolesPlusPlus,
      bool? isSbcItem,
      bool? isObjectiveItem,
      AccelerateType? accelerateType,
      AccelerateTypes? accelerateTypes,
      int? facePace,
      int? faceShooting,
      int? facePassing,
      int? faceDribbling,
      int? faceDefending,
      int? facePhysicality,
      int? gkFaceDiving,
      int? gkFaceHandling,
      int? gkFaceKicking,
      int? gkFaceReflexes,
      int? gkFaceSpeed,
      int? gkFacePositioning,
      int? attributeAcceleration,
      int? attributeSprintSpeed,
      int? attributeAgility,
      int? attributeBalance,
      int? attributeJumping,
      int? attributeStamina,
      int? attributeStrength,
      int? attributeReactions,
      int? attributeAggression,
      int? attributeComposure,
      int? attributeInterceptions,
      int? attributePositioning,
      int? attributeVision,
      int? attributeBallControl,
      int? attributeCrossing,
      int? attributeDribbling,
      int? attributeFinishing,
      int? attributeFkAccuracy,
      int? attributeHeadingAccuracy,
      int? attributeLongPassing,
      int? attributeShortPassing,
      int? attributeShotPower,
      int? attributeLongShots,
      int? attributeDefensiveAwareness,
      int? attributeStandingTackle,
      int? attributeSlidingTackle,
      int? attributeVolleys,
      int? attributeCurve,
      int? attributePenalties,
      int? attributeGkDiving,
      int? attributeGkHandling,
      int? attributeGkKicking,
      int? attributeGkReflexes,
      int? attributeGkPositioning,
      bool? hasPrice});
  PlayerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayerCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Player, $Out>
    implements PlayerCopyWith<$R, Player, $Out> {
  _PlayerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Player> $mapper = PlayerMapper.ensureInitialized();
  @override
  RarityCopyWith<$R, Rarity, Rarity> get rarity =>
      $value.rarity.copyWith.$chain((v) => call(rarity: v));
  @override
  ClubCopyWith<$R, Club, Club>? get club =>
      $value.club?.copyWith.$chain((v) => call(club: v));
  @override
  NationCopyWith<$R, Nation, Nation>? get nation =>
      $value.nation?.copyWith.$chain((v) => call(nation: v));
  @override
  LeagueCopyWith<$R, League, League>? get league =>
      $value.league?.copyWith.$chain((v) => call(league: v));
  @override
  PlayerOldPriceCopyWith<$R, PlayerOldPrice, PlayerOldPrice>? get price =>
      $value.price?.copyWith.$chain((v) => call(price: v));
  @override
  PositionCopyWith<$R, Position, Position>? get position =>
      $value.position?.copyWith.$chain((v) => call(position: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>?
      get alternativePositionIds => $value.alternativePositionIds != null
          ? ListCopyWith(
              $value.alternativePositionIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(alternativePositionIds: v))
          : null;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get playStyles =>
      $value.playStyles != null
          ? ListCopyWith(
              $value.playStyles!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(playStyles: v))
          : null;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get playStylesPlus =>
      $value.playStylesPlus != null
          ? ListCopyWith(
              $value.playStylesPlus!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(playStylesPlus: v))
          : null;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get rolesPlus =>
      $value.rolesPlus != null
          ? ListCopyWith(
              $value.rolesPlus!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(rolesPlus: v))
          : null;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get rolesPlusPlus =>
      $value.rolesPlusPlus != null
          ? ListCopyWith(
              $value.rolesPlusPlus!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(rolesPlusPlus: v))
          : null;
  @override
  AccelerateTypesCopyWith<$R, AccelerateTypes, AccelerateTypes>?
      get accelerateTypes => $value.accelerateTypes?.copyWith
          .$chain((v) => call(accelerateTypes: v));
  @override
  $R call(
          {int? eaId,
          int? basePlayerEaId,
          Object? commonName = $none,
          Object? firstName = $none,
          Object? lastName = $none,
          int? overall,
          Rarity? rarity,
          String? imagePath,
          Object? club = $none,
          Object? nation = $none,
          Object? league = $none,
          Object? price = $none,
          Object? height = $none,
          Object? weight = $none,
          Object? dateOfBirth = $none,
          Object? position = $none,
          Object? alternativePositionIds = $none,
          Object? skillMoves = $none,
          Object? weakFoot = $none,
          Object? foot = $none,
          Object? gender = $none,
          Object? playStyles = $none,
          Object? playStylesPlus = $none,
          Object? rolesPlus = $none,
          Object? rolesPlusPlus = $none,
          bool? isSbcItem,
          bool? isObjectiveItem,
          Object? accelerateType = $none,
          Object? accelerateTypes = $none,
          Object? facePace = $none,
          Object? faceShooting = $none,
          Object? facePassing = $none,
          Object? faceDribbling = $none,
          Object? faceDefending = $none,
          Object? facePhysicality = $none,
          Object? gkFaceDiving = $none,
          Object? gkFaceHandling = $none,
          Object? gkFaceKicking = $none,
          Object? gkFaceReflexes = $none,
          Object? gkFaceSpeed = $none,
          Object? gkFacePositioning = $none,
          Object? attributeAcceleration = $none,
          Object? attributeSprintSpeed = $none,
          Object? attributeAgility = $none,
          Object? attributeBalance = $none,
          Object? attributeJumping = $none,
          Object? attributeStamina = $none,
          Object? attributeStrength = $none,
          Object? attributeReactions = $none,
          Object? attributeAggression = $none,
          Object? attributeComposure = $none,
          Object? attributeInterceptions = $none,
          Object? attributePositioning = $none,
          Object? attributeVision = $none,
          Object? attributeBallControl = $none,
          Object? attributeCrossing = $none,
          Object? attributeDribbling = $none,
          Object? attributeFinishing = $none,
          Object? attributeFkAccuracy = $none,
          Object? attributeHeadingAccuracy = $none,
          Object? attributeLongPassing = $none,
          Object? attributeShortPassing = $none,
          Object? attributeShotPower = $none,
          Object? attributeLongShots = $none,
          Object? attributeDefensiveAwareness = $none,
          Object? attributeStandingTackle = $none,
          Object? attributeSlidingTackle = $none,
          Object? attributeVolleys = $none,
          Object? attributeCurve = $none,
          Object? attributePenalties = $none,
          Object? attributeGkDiving = $none,
          Object? attributeGkHandling = $none,
          Object? attributeGkKicking = $none,
          Object? attributeGkReflexes = $none,
          Object? attributeGkPositioning = $none,
          bool? hasPrice}) =>
      $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (basePlayerEaId != null) #basePlayerEaId: basePlayerEaId,
        if (commonName != $none) #commonName: commonName,
        if (firstName != $none) #firstName: firstName,
        if (lastName != $none) #lastName: lastName,
        if (overall != null) #overall: overall,
        if (rarity != null) #rarity: rarity,
        if (imagePath != null) #imagePath: imagePath,
        if (club != $none) #club: club,
        if (nation != $none) #nation: nation,
        if (league != $none) #league: league,
        if (price != $none) #price: price,
        if (height != $none) #height: height,
        if (weight != $none) #weight: weight,
        if (dateOfBirth != $none) #dateOfBirth: dateOfBirth,
        if (position != $none) #position: position,
        if (alternativePositionIds != $none)
          #alternativePositionIds: alternativePositionIds,
        if (skillMoves != $none) #skillMoves: skillMoves,
        if (weakFoot != $none) #weakFoot: weakFoot,
        if (foot != $none) #foot: foot,
        if (gender != $none) #gender: gender,
        if (playStyles != $none) #playStyles: playStyles,
        if (playStylesPlus != $none) #playStylesPlus: playStylesPlus,
        if (rolesPlus != $none) #rolesPlus: rolesPlus,
        if (rolesPlusPlus != $none) #rolesPlusPlus: rolesPlusPlus,
        if (isSbcItem != null) #isSbcItem: isSbcItem,
        if (isObjectiveItem != null) #isObjectiveItem: isObjectiveItem,
        if (accelerateType != $none) #accelerateType: accelerateType,
        if (accelerateTypes != $none) #accelerateTypes: accelerateTypes,
        if (facePace != $none) #facePace: facePace,
        if (faceShooting != $none) #faceShooting: faceShooting,
        if (facePassing != $none) #facePassing: facePassing,
        if (faceDribbling != $none) #faceDribbling: faceDribbling,
        if (faceDefending != $none) #faceDefending: faceDefending,
        if (facePhysicality != $none) #facePhysicality: facePhysicality,
        if (gkFaceDiving != $none) #gkFaceDiving: gkFaceDiving,
        if (gkFaceHandling != $none) #gkFaceHandling: gkFaceHandling,
        if (gkFaceKicking != $none) #gkFaceKicking: gkFaceKicking,
        if (gkFaceReflexes != $none) #gkFaceReflexes: gkFaceReflexes,
        if (gkFaceSpeed != $none) #gkFaceSpeed: gkFaceSpeed,
        if (gkFacePositioning != $none) #gkFacePositioning: gkFacePositioning,
        if (attributeAcceleration != $none)
          #attributeAcceleration: attributeAcceleration,
        if (attributeSprintSpeed != $none)
          #attributeSprintSpeed: attributeSprintSpeed,
        if (attributeAgility != $none) #attributeAgility: attributeAgility,
        if (attributeBalance != $none) #attributeBalance: attributeBalance,
        if (attributeJumping != $none) #attributeJumping: attributeJumping,
        if (attributeStamina != $none) #attributeStamina: attributeStamina,
        if (attributeStrength != $none) #attributeStrength: attributeStrength,
        if (attributeReactions != $none)
          #attributeReactions: attributeReactions,
        if (attributeAggression != $none)
          #attributeAggression: attributeAggression,
        if (attributeComposure != $none)
          #attributeComposure: attributeComposure,
        if (attributeInterceptions != $none)
          #attributeInterceptions: attributeInterceptions,
        if (attributePositioning != $none)
          #attributePositioning: attributePositioning,
        if (attributeVision != $none) #attributeVision: attributeVision,
        if (attributeBallControl != $none)
          #attributeBallControl: attributeBallControl,
        if (attributeCrossing != $none) #attributeCrossing: attributeCrossing,
        if (attributeDribbling != $none)
          #attributeDribbling: attributeDribbling,
        if (attributeFinishing != $none)
          #attributeFinishing: attributeFinishing,
        if (attributeFkAccuracy != $none)
          #attributeFkAccuracy: attributeFkAccuracy,
        if (attributeHeadingAccuracy != $none)
          #attributeHeadingAccuracy: attributeHeadingAccuracy,
        if (attributeLongPassing != $none)
          #attributeLongPassing: attributeLongPassing,
        if (attributeShortPassing != $none)
          #attributeShortPassing: attributeShortPassing,
        if (attributeShotPower != $none)
          #attributeShotPower: attributeShotPower,
        if (attributeLongShots != $none)
          #attributeLongShots: attributeLongShots,
        if (attributeDefensiveAwareness != $none)
          #attributeDefensiveAwareness: attributeDefensiveAwareness,
        if (attributeStandingTackle != $none)
          #attributeStandingTackle: attributeStandingTackle,
        if (attributeSlidingTackle != $none)
          #attributeSlidingTackle: attributeSlidingTackle,
        if (attributeVolleys != $none) #attributeVolleys: attributeVolleys,
        if (attributeCurve != $none) #attributeCurve: attributeCurve,
        if (attributePenalties != $none)
          #attributePenalties: attributePenalties,
        if (attributeGkDiving != $none) #attributeGkDiving: attributeGkDiving,
        if (attributeGkHandling != $none)
          #attributeGkHandling: attributeGkHandling,
        if (attributeGkKicking != $none)
          #attributeGkKicking: attributeGkKicking,
        if (attributeGkReflexes != $none)
          #attributeGkReflexes: attributeGkReflexes,
        if (attributeGkPositioning != $none)
          #attributeGkPositioning: attributeGkPositioning,
        if (hasPrice != null) #hasPrice: hasPrice
      }));
  @override
  Player $make(CopyWithData data) => Player(
      eaId: data.get(#eaId, or: $value.eaId),
      basePlayerEaId: data.get(#basePlayerEaId, or: $value.basePlayerEaId),
      commonName: data.get(#commonName, or: $value.commonName),
      firstName: data.get(#firstName, or: $value.firstName),
      lastName: data.get(#lastName, or: $value.lastName),
      overall: data.get(#overall, or: $value.overall),
      rarity: data.get(#rarity, or: $value.rarity),
      imagePath: data.get(#imagePath, or: $value.imagePath),
      club: data.get(#club, or: $value.club),
      nation: data.get(#nation, or: $value.nation),
      league: data.get(#league, or: $value.league),
      price: data.get(#price, or: $value.price),
      height: data.get(#height, or: $value.height),
      weight: data.get(#weight, or: $value.weight),
      dateOfBirth: data.get(#dateOfBirth, or: $value.dateOfBirth),
      position: data.get(#position, or: $value.position),
      alternativePositionIds:
          data.get(#alternativePositionIds, or: $value.alternativePositionIds),
      skillMoves: data.get(#skillMoves, or: $value.skillMoves),
      weakFoot: data.get(#weakFoot, or: $value.weakFoot),
      foot: data.get(#foot, or: $value.foot),
      gender: data.get(#gender, or: $value.gender),
      playStyles: data.get(#playStyles, or: $value.playStyles),
      playStylesPlus: data.get(#playStylesPlus, or: $value.playStylesPlus),
      rolesPlus: data.get(#rolesPlus, or: $value.rolesPlus),
      rolesPlusPlus: data.get(#rolesPlusPlus, or: $value.rolesPlusPlus),
      isSbcItem: data.get(#isSbcItem, or: $value.isSbcItem),
      isObjectiveItem: data.get(#isObjectiveItem, or: $value.isObjectiveItem),
      accelerateType: data.get(#accelerateType, or: $value.accelerateType),
      accelerateTypes: data.get(#accelerateTypes, or: $value.accelerateTypes),
      facePace: data.get(#facePace, or: $value.facePace),
      faceShooting: data.get(#faceShooting, or: $value.faceShooting),
      facePassing: data.get(#facePassing, or: $value.facePassing),
      faceDribbling: data.get(#faceDribbling, or: $value.faceDribbling),
      faceDefending: data.get(#faceDefending, or: $value.faceDefending),
      facePhysicality: data.get(#facePhysicality, or: $value.facePhysicality),
      gkFaceDiving: data.get(#gkFaceDiving, or: $value.gkFaceDiving),
      gkFaceHandling: data.get(#gkFaceHandling, or: $value.gkFaceHandling),
      gkFaceKicking: data.get(#gkFaceKicking, or: $value.gkFaceKicking),
      gkFaceReflexes: data.get(#gkFaceReflexes, or: $value.gkFaceReflexes),
      gkFaceSpeed: data.get(#gkFaceSpeed, or: $value.gkFaceSpeed),
      gkFacePositioning:
          data.get(#gkFacePositioning, or: $value.gkFacePositioning),
      attributeAcceleration:
          data.get(#attributeAcceleration, or: $value.attributeAcceleration),
      attributeSprintSpeed:
          data.get(#attributeSprintSpeed, or: $value.attributeSprintSpeed),
      attributeAgility:
          data.get(#attributeAgility, or: $value.attributeAgility),
      attributeBalance:
          data.get(#attributeBalance, or: $value.attributeBalance),
      attributeJumping:
          data.get(#attributeJumping, or: $value.attributeJumping),
      attributeStamina:
          data.get(#attributeStamina, or: $value.attributeStamina),
      attributeStrength:
          data.get(#attributeStrength, or: $value.attributeStrength),
      attributeReactions:
          data.get(#attributeReactions, or: $value.attributeReactions),
      attributeAggression:
          data.get(#attributeAggression, or: $value.attributeAggression),
      attributeComposure:
          data.get(#attributeComposure, or: $value.attributeComposure),
      attributeInterceptions:
          data.get(#attributeInterceptions, or: $value.attributeInterceptions),
      attributePositioning:
          data.get(#attributePositioning, or: $value.attributePositioning),
      attributeVision: data.get(#attributeVision, or: $value.attributeVision),
      attributeBallControl:
          data.get(#attributeBallControl, or: $value.attributeBallControl),
      attributeCrossing:
          data.get(#attributeCrossing, or: $value.attributeCrossing),
      attributeDribbling:
          data.get(#attributeDribbling, or: $value.attributeDribbling),
      attributeFinishing:
          data.get(#attributeFinishing, or: $value.attributeFinishing),
      attributeFkAccuracy:
          data.get(#attributeFkAccuracy, or: $value.attributeFkAccuracy),
      attributeHeadingAccuracy: data.get(#attributeHeadingAccuracy,
          or: $value.attributeHeadingAccuracy),
      attributeLongPassing:
          data.get(#attributeLongPassing, or: $value.attributeLongPassing),
      attributeShortPassing:
          data.get(#attributeShortPassing, or: $value.attributeShortPassing),
      attributeShotPower:
          data.get(#attributeShotPower, or: $value.attributeShotPower),
      attributeLongShots:
          data.get(#attributeLongShots, or: $value.attributeLongShots),
      attributeDefensiveAwareness: data.get(#attributeDefensiveAwareness,
          or: $value.attributeDefensiveAwareness),
      attributeStandingTackle: data.get(#attributeStandingTackle,
          or: $value.attributeStandingTackle),
      attributeSlidingTackle:
          data.get(#attributeSlidingTackle, or: $value.attributeSlidingTackle),
      attributeVolleys: data.get(#attributeVolleys, or: $value.attributeVolleys),
      attributeCurve: data.get(#attributeCurve, or: $value.attributeCurve),
      attributePenalties: data.get(#attributePenalties, or: $value.attributePenalties),
      attributeGkDiving: data.get(#attributeGkDiving, or: $value.attributeGkDiving),
      attributeGkHandling: data.get(#attributeGkHandling, or: $value.attributeGkHandling),
      attributeGkKicking: data.get(#attributeGkKicking, or: $value.attributeGkKicking),
      attributeGkReflexes: data.get(#attributeGkReflexes, or: $value.attributeGkReflexes),
      attributeGkPositioning: data.get(#attributeGkPositioning, or: $value.attributeGkPositioning),
      hasPrice: data.get(#hasPrice, or: $value.hasPrice));

  @override
  PlayerCopyWith<$R2, Player, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PlayerCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
