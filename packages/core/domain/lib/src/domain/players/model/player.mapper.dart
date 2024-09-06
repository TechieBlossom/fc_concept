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
      PositionMapper.ensureInitialized();
      FootMapper.ensureInitialized();
      WorkRateMapper.ensureInitialized();
      GenderMapper.ensureInitialized();
      CardColorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Player';

  static int _$id(Player v) => v.id;
  static const Field<Player, int> _f$id = Field('id', _$id);
  static String _$name(Player v) => v.name;
  static const Field<Player, String> _f$name = Field('name', _$name);
  static String? _$commonName(Player v) => v.commonName;
  static const Field<Player, String> _f$commonName =
      Field('commonName', _$commonName, opt: true);
  static String? _$firstName(Player v) => v.firstName;
  static const Field<Player, String> _f$firstName =
      Field('firstName', _$firstName, opt: true);
  static String? _$lastName(Player v) => v.lastName;
  static const Field<Player, String> _f$lastName =
      Field('lastName', _$lastName, opt: true);
  static int _$rating(Player v) => v.rating;
  static const Field<Player, int> _f$rating = Field('rating', _$rating);
  static Rarity _$rarity(Player v) => v.rarity;
  static const Field<Player, Rarity> _f$rarity =
      Field('rarity', _$rarity, key: 'table_rarity');
  static Club? _$club(Player v) => v.club;
  static const Field<Player, Club> _f$club =
      Field('club', _$club, key: 'table_club', opt: true);
  static Nation? _$nation(Player v) => v.nation;
  static const Field<Player, Nation> _f$nation =
      Field('nation', _$nation, key: 'table_nation', opt: true);
  static int? _$height(Player v) => v.height;
  static const Field<Player, int> _f$height =
      Field('height', _$height, opt: true);
  static int? _$weight(Player v) => v.weight;
  static const Field<Player, int> _f$weight =
      Field('weight', _$weight, opt: true);
  static int? _$age(Player v) => v.age;
  static const Field<Player, int> _f$age = Field('age', _$age, opt: true);
  static Position? _$position(Player v) => v.position;
  static const Field<Player, Position> _f$position =
      Field('position', _$position, opt: true);
  static int? _$skillMoves(Player v) => v.skillMoves;
  static const Field<Player, int> _f$skillMoves =
      Field('skillMoves', _$skillMoves, opt: true);
  static int? _$weakFoot(Player v) => v.weakFoot;
  static const Field<Player, int> _f$weakFoot =
      Field('weakFoot', _$weakFoot, opt: true);
  static Foot? _$foot(Player v) => v.foot;
  static const Field<Player, Foot> _f$foot = Field('foot', _$foot, opt: true);
  static WorkRate? _$attackWorkRate(Player v) => v.attackWorkRate;
  static const Field<Player, WorkRate> _f$attackWorkRate =
      Field('attackWorkRate', _$attackWorkRate, opt: true);
  static WorkRate? _$defenseWorkRate(Player v) => v.defenseWorkRate;
  static const Field<Player, WorkRate> _f$defenseWorkRate =
      Field('defenseWorkRate', _$defenseWorkRate, opt: true);
  static int? _$pace(Player v) => v.pace;
  static const Field<Player, int> _f$pace = Field('pace', _$pace, opt: true);
  static int? _$shooting(Player v) => v.shooting;
  static const Field<Player, int> _f$shooting =
      Field('shooting', _$shooting, opt: true);
  static int? _$passing(Player v) => v.passing;
  static const Field<Player, int> _f$passing =
      Field('passing', _$passing, opt: true);
  static int? _$dribbling(Player v) => v.dribbling;
  static const Field<Player, int> _f$dribbling =
      Field('dribbling', _$dribbling, opt: true);
  static int? _$defending(Player v) => v.defending;
  static const Field<Player, int> _f$defending =
      Field('defending', _$defending, opt: true);
  static int? _$physicality(Player v) => v.physicality;
  static const Field<Player, int> _f$physicality =
      Field('physicality', _$physicality, opt: true);
  static Gender? _$gender(Player v) => v.gender;
  static const Field<Player, Gender> _f$gender =
      Field('gender', _$gender, opt: true);
  static CardColor? _$color(Player v) => v.color;
  static const Field<Player, CardColor> _f$color =
      Field('color', _$color, opt: true);

  @override
  final MappableFields<Player> fields = const {
    #id: _f$id,
    #name: _f$name,
    #commonName: _f$commonName,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #rating: _f$rating,
    #rarity: _f$rarity,
    #club: _f$club,
    #nation: _f$nation,
    #height: _f$height,
    #weight: _f$weight,
    #age: _f$age,
    #position: _f$position,
    #skillMoves: _f$skillMoves,
    #weakFoot: _f$weakFoot,
    #foot: _f$foot,
    #attackWorkRate: _f$attackWorkRate,
    #defenseWorkRate: _f$defenseWorkRate,
    #pace: _f$pace,
    #shooting: _f$shooting,
    #passing: _f$passing,
    #dribbling: _f$dribbling,
    #defending: _f$defending,
    #physicality: _f$physicality,
    #gender: _f$gender,
    #color: _f$color,
  };

  static Player _instantiate(DecodingData data) {
    return Player(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        commonName: data.dec(_f$commonName),
        firstName: data.dec(_f$firstName),
        lastName: data.dec(_f$lastName),
        rating: data.dec(_f$rating),
        rarity: data.dec(_f$rarity),
        club: data.dec(_f$club),
        nation: data.dec(_f$nation),
        height: data.dec(_f$height),
        weight: data.dec(_f$weight),
        age: data.dec(_f$age),
        position: data.dec(_f$position),
        skillMoves: data.dec(_f$skillMoves),
        weakFoot: data.dec(_f$weakFoot),
        foot: data.dec(_f$foot),
        attackWorkRate: data.dec(_f$attackWorkRate),
        defenseWorkRate: data.dec(_f$defenseWorkRate),
        pace: data.dec(_f$pace),
        shooting: data.dec(_f$shooting),
        passing: data.dec(_f$passing),
        dribbling: data.dec(_f$dribbling),
        defending: data.dec(_f$defending),
        physicality: data.dec(_f$physicality),
        gender: data.dec(_f$gender),
        color: data.dec(_f$color));
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
  $R call(
      {int? id,
      String? name,
      String? commonName,
      String? firstName,
      String? lastName,
      int? rating,
      Rarity? rarity,
      Club? club,
      Nation? nation,
      int? height,
      int? weight,
      int? age,
      Position? position,
      int? skillMoves,
      int? weakFoot,
      Foot? foot,
      WorkRate? attackWorkRate,
      WorkRate? defenseWorkRate,
      int? pace,
      int? shooting,
      int? passing,
      int? dribbling,
      int? defending,
      int? physicality,
      Gender? gender,
      CardColor? color});
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
  $R call(
          {int? id,
          String? name,
          Object? commonName = $none,
          Object? firstName = $none,
          Object? lastName = $none,
          int? rating,
          Rarity? rarity,
          Object? club = $none,
          Object? nation = $none,
          Object? height = $none,
          Object? weight = $none,
          Object? age = $none,
          Object? position = $none,
          Object? skillMoves = $none,
          Object? weakFoot = $none,
          Object? foot = $none,
          Object? attackWorkRate = $none,
          Object? defenseWorkRate = $none,
          Object? pace = $none,
          Object? shooting = $none,
          Object? passing = $none,
          Object? dribbling = $none,
          Object? defending = $none,
          Object? physicality = $none,
          Object? gender = $none,
          Object? color = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (commonName != $none) #commonName: commonName,
        if (firstName != $none) #firstName: firstName,
        if (lastName != $none) #lastName: lastName,
        if (rating != null) #rating: rating,
        if (rarity != null) #rarity: rarity,
        if (club != $none) #club: club,
        if (nation != $none) #nation: nation,
        if (height != $none) #height: height,
        if (weight != $none) #weight: weight,
        if (age != $none) #age: age,
        if (position != $none) #position: position,
        if (skillMoves != $none) #skillMoves: skillMoves,
        if (weakFoot != $none) #weakFoot: weakFoot,
        if (foot != $none) #foot: foot,
        if (attackWorkRate != $none) #attackWorkRate: attackWorkRate,
        if (defenseWorkRate != $none) #defenseWorkRate: defenseWorkRate,
        if (pace != $none) #pace: pace,
        if (shooting != $none) #shooting: shooting,
        if (passing != $none) #passing: passing,
        if (dribbling != $none) #dribbling: dribbling,
        if (defending != $none) #defending: defending,
        if (physicality != $none) #physicality: physicality,
        if (gender != $none) #gender: gender,
        if (color != $none) #color: color
      }));
  @override
  Player $make(CopyWithData data) => Player(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      commonName: data.get(#commonName, or: $value.commonName),
      firstName: data.get(#firstName, or: $value.firstName),
      lastName: data.get(#lastName, or: $value.lastName),
      rating: data.get(#rating, or: $value.rating),
      rarity: data.get(#rarity, or: $value.rarity),
      club: data.get(#club, or: $value.club),
      nation: data.get(#nation, or: $value.nation),
      height: data.get(#height, or: $value.height),
      weight: data.get(#weight, or: $value.weight),
      age: data.get(#age, or: $value.age),
      position: data.get(#position, or: $value.position),
      skillMoves: data.get(#skillMoves, or: $value.skillMoves),
      weakFoot: data.get(#weakFoot, or: $value.weakFoot),
      foot: data.get(#foot, or: $value.foot),
      attackWorkRate: data.get(#attackWorkRate, or: $value.attackWorkRate),
      defenseWorkRate: data.get(#defenseWorkRate, or: $value.defenseWorkRate),
      pace: data.get(#pace, or: $value.pace),
      shooting: data.get(#shooting, or: $value.shooting),
      passing: data.get(#passing, or: $value.passing),
      dribbling: data.get(#dribbling, or: $value.dribbling),
      defending: data.get(#defending, or: $value.defending),
      physicality: data.get(#physicality, or: $value.physicality),
      gender: data.get(#gender, or: $value.gender),
      color: data.get(#color, or: $value.color));

  @override
  PlayerCopyWith<$R2, Player, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PlayerCopyWithImpl($value, $cast, t);
}
