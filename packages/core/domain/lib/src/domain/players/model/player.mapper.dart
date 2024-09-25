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
      PositionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Player';

  static int _$id(Player v) => v.id;
  static const Field<Player, int> _f$id = Field('id', _$id);
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
      Field('rarity', _$rarity, key: 'table_core_rarity');
  static String _$imagePath(Player v) => v.imagePath;
  static const Field<Player, String> _f$imagePath =
      Field('imagePath', _$imagePath);
  static Club? _$club(Player v) => v.club;
  static const Field<Player, Club> _f$club =
      Field('club', _$club, key: 'table_core_club', opt: true);
  static Nation? _$nation(Player v) => v.nation;
  static const Field<Player, Nation> _f$nation =
      Field('nation', _$nation, key: 'table_core_nation', opt: true);
  static League? _$league(Player v) => v.league;
  static const Field<Player, League> _f$league =
      Field('league', _$league, key: 'table_core_league', opt: true);
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
      Field('position', _$position, key: 'table_core_position', opt: true);
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
  static List<int>? _$rolesPlus(Player v) => v.rolesPlus;
  static const Field<Player, List<int>> _f$rolesPlus =
      Field('rolesPlus', _$rolesPlus, opt: true);
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

  @override
  final MappableFields<Player> fields = const {
    #id: _f$id,
    #commonName: _f$commonName,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #overall: _f$overall,
    #rarity: _f$rarity,
    #imagePath: _f$imagePath,
    #club: _f$club,
    #nation: _f$nation,
    #league: _f$league,
    #height: _f$height,
    #weight: _f$weight,
    #dateOfBirth: _f$dateOfBirth,
    #position: _f$position,
    #skillMoves: _f$skillMoves,
    #weakFoot: _f$weakFoot,
    #foot: _f$foot,
    #gender: _f$gender,
    #rolesPlus: _f$rolesPlus,
    #facePace: _f$facePace,
    #faceShooting: _f$faceShooting,
    #facePassing: _f$facePassing,
    #faceDribbling: _f$faceDribbling,
    #faceDefending: _f$faceDefending,
    #facePhysicality: _f$facePhysicality,
  };

  static Player _instantiate(DecodingData data) {
    return Player(
        id: data.dec(_f$id),
        commonName: data.dec(_f$commonName),
        firstName: data.dec(_f$firstName),
        lastName: data.dec(_f$lastName),
        overall: data.dec(_f$overall),
        rarity: data.dec(_f$rarity),
        imagePath: data.dec(_f$imagePath),
        club: data.dec(_f$club),
        nation: data.dec(_f$nation),
        league: data.dec(_f$league),
        height: data.dec(_f$height),
        weight: data.dec(_f$weight),
        dateOfBirth: data.dec(_f$dateOfBirth),
        position: data.dec(_f$position),
        skillMoves: data.dec(_f$skillMoves),
        weakFoot: data.dec(_f$weakFoot),
        foot: data.dec(_f$foot),
        gender: data.dec(_f$gender),
        rolesPlus: data.dec(_f$rolesPlus),
        facePace: data.dec(_f$facePace),
        faceShooting: data.dec(_f$faceShooting),
        facePassing: data.dec(_f$facePassing),
        faceDribbling: data.dec(_f$faceDribbling),
        faceDefending: data.dec(_f$faceDefending),
        facePhysicality: data.dec(_f$facePhysicality));
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
      _PlayerCopyWithImpl(this as Player, $identity, $identity);
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
      $base.as((v, t, t2) => _PlayerCopyWithImpl(v, t, t2));
}

abstract class PlayerCopyWith<$R, $In extends Player, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RarityCopyWith<$R, Rarity, Rarity> get rarity;
  ClubCopyWith<$R, Club, Club>? get club;
  NationCopyWith<$R, Nation, Nation>? get nation;
  LeagueCopyWith<$R, League, League>? get league;
  PositionCopyWith<$R, Position, Position>? get position;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get rolesPlus;
  $R call(
      {int? id,
      String? commonName,
      String? firstName,
      String? lastName,
      int? overall,
      Rarity? rarity,
      String? imagePath,
      Club? club,
      Nation? nation,
      League? league,
      int? height,
      int? weight,
      DateTime? dateOfBirth,
      Position? position,
      int? skillMoves,
      int? weakFoot,
      int? foot,
      int? gender,
      List<int>? rolesPlus,
      int? facePace,
      int? faceShooting,
      int? facePassing,
      int? faceDribbling,
      int? faceDefending,
      int? facePhysicality});
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
  PositionCopyWith<$R, Position, Position>? get position =>
      $value.position?.copyWith.$chain((v) => call(position: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get rolesPlus =>
      $value.rolesPlus != null
          ? ListCopyWith(
              $value.rolesPlus!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(rolesPlus: v))
          : null;
  @override
  $R call(
          {int? id,
          Object? commonName = $none,
          Object? firstName = $none,
          Object? lastName = $none,
          int? overall,
          Rarity? rarity,
          String? imagePath,
          Object? club = $none,
          Object? nation = $none,
          Object? league = $none,
          Object? height = $none,
          Object? weight = $none,
          Object? dateOfBirth = $none,
          Object? position = $none,
          Object? skillMoves = $none,
          Object? weakFoot = $none,
          Object? foot = $none,
          Object? gender = $none,
          Object? rolesPlus = $none,
          Object? facePace = $none,
          Object? faceShooting = $none,
          Object? facePassing = $none,
          Object? faceDribbling = $none,
          Object? faceDefending = $none,
          Object? facePhysicality = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (commonName != $none) #commonName: commonName,
        if (firstName != $none) #firstName: firstName,
        if (lastName != $none) #lastName: lastName,
        if (overall != null) #overall: overall,
        if (rarity != null) #rarity: rarity,
        if (imagePath != null) #imagePath: imagePath,
        if (club != $none) #club: club,
        if (nation != $none) #nation: nation,
        if (league != $none) #league: league,
        if (height != $none) #height: height,
        if (weight != $none) #weight: weight,
        if (dateOfBirth != $none) #dateOfBirth: dateOfBirth,
        if (position != $none) #position: position,
        if (skillMoves != $none) #skillMoves: skillMoves,
        if (weakFoot != $none) #weakFoot: weakFoot,
        if (foot != $none) #foot: foot,
        if (gender != $none) #gender: gender,
        if (rolesPlus != $none) #rolesPlus: rolesPlus,
        if (facePace != $none) #facePace: facePace,
        if (faceShooting != $none) #faceShooting: faceShooting,
        if (facePassing != $none) #facePassing: facePassing,
        if (faceDribbling != $none) #faceDribbling: faceDribbling,
        if (faceDefending != $none) #faceDefending: faceDefending,
        if (facePhysicality != $none) #facePhysicality: facePhysicality
      }));
  @override
  Player $make(CopyWithData data) => Player(
      id: data.get(#id, or: $value.id),
      commonName: data.get(#commonName, or: $value.commonName),
      firstName: data.get(#firstName, or: $value.firstName),
      lastName: data.get(#lastName, or: $value.lastName),
      overall: data.get(#overall, or: $value.overall),
      rarity: data.get(#rarity, or: $value.rarity),
      imagePath: data.get(#imagePath, or: $value.imagePath),
      club: data.get(#club, or: $value.club),
      nation: data.get(#nation, or: $value.nation),
      league: data.get(#league, or: $value.league),
      height: data.get(#height, or: $value.height),
      weight: data.get(#weight, or: $value.weight),
      dateOfBirth: data.get(#dateOfBirth, or: $value.dateOfBirth),
      position: data.get(#position, or: $value.position),
      skillMoves: data.get(#skillMoves, or: $value.skillMoves),
      weakFoot: data.get(#weakFoot, or: $value.weakFoot),
      foot: data.get(#foot, or: $value.foot),
      gender: data.get(#gender, or: $value.gender),
      rolesPlus: data.get(#rolesPlus, or: $value.rolesPlus),
      facePace: data.get(#facePace, or: $value.facePace),
      faceShooting: data.get(#faceShooting, or: $value.faceShooting),
      facePassing: data.get(#facePassing, or: $value.facePassing),
      faceDribbling: data.get(#faceDribbling, or: $value.faceDribbling),
      faceDefending: data.get(#faceDefending, or: $value.faceDefending),
      facePhysicality: data.get(#facePhysicality, or: $value.facePhysicality));

  @override
  PlayerCopyWith<$R2, Player, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PlayerCopyWithImpl($value, $cast, t);
}
