// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'dashboard_bloc.dart';

class DashboardEventMapper extends ClassMapperBase<DashboardEvent> {
  DashboardEventMapper._();

  static DashboardEventMapper? _instance;
  static DashboardEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DashboardEventMapper._());
      InitMapper.ensureInitialized();
      UpdatePlayerPricesMapper.ensureInitialized();
      SwitchHighRatedPositionGroupMapper.ensureInitialized();
      SwitchRaritySquadMapper.ensureInitialized();
      PlayerTapMapper.ensureInitialized();
      SearchTapMapper.ensureInitialized();
      CheapestByPlayerRatingTapMapper.ensureInitialized();
      IndexTapMapper.ensureInitialized();
      ToggleIconsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DashboardEvent';

  @override
  final MappableFields<DashboardEvent> fields = const {};

  static DashboardEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'DashboardEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static DashboardEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DashboardEvent>(map);
  }

  static DashboardEvent fromJson(String json) {
    return ensureInitialized().decodeJson<DashboardEvent>(json);
  }
}

mixin DashboardEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  DashboardEventCopyWith<DashboardEvent, DashboardEvent, DashboardEvent>
      get copyWith;
}

abstract class DashboardEventCopyWith<$R, $In extends DashboardEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  DashboardEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      DashboardEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Init';

  @override
  final MappableFields<Init> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'init';
  @override
  late final ClassMapperBase superMapper =
      DashboardEventMapper.ensureInitialized();

  static Init _instantiate(DecodingData data) {
    return Init();
  }

  @override
  final Function instantiate = _instantiate;

  static Init fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Init>(map);
  }

  static Init fromJson(String json) {
    return ensureInitialized().decodeJson<Init>(json);
  }
}

mixin InitMappable {
  String toJson() {
    return InitMapper.ensureInitialized().encodeJson<Init>(this as Init);
  }

  Map<String, dynamic> toMap() {
    return InitMapper.ensureInitialized().encodeMap<Init>(this as Init);
  }

  InitCopyWith<Init, Init, Init> get copyWith =>
      _InitCopyWithImpl<Init, Init>(this as Init, $identity, $identity);
  @override
  String toString() {
    return InitMapper.ensureInitialized().stringifyValue(this as Init);
  }

  @override
  bool operator ==(Object other) {
    return InitMapper.ensureInitialized().equalsValue(this as Init, other);
  }

  @override
  int get hashCode {
    return InitMapper.ensureInitialized().hashValue(this as Init);
  }
}

extension InitValueCopy<$R, $Out> on ObjectCopyWith<$R, Init, $Out> {
  InitCopyWith<$R, Init, $Out> get $asInit =>
      $base.as((v, t, t2) => _InitCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InitCopyWith<$R, $In extends Init, $Out>
    implements DashboardEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  InitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InitCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Init, $Out>
    implements InitCopyWith<$R, Init, $Out> {
  _InitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Init> $mapper = InitMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Init $make(CopyWithData data) => Init();

  @override
  InitCopyWith<$R2, Init, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _InitCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UpdatePlayerPricesMapper extends SubClassMapperBase<UpdatePlayerPrices> {
  UpdatePlayerPricesMapper._();

  static UpdatePlayerPricesMapper? _instance;
  static UpdatePlayerPricesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdatePlayerPricesMapper._());
      DashboardEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'UpdatePlayerPrices';

  static PlayerGroup _$playerGroup(UpdatePlayerPrices v) => v.playerGroup;
  static const Field<UpdatePlayerPrices, PlayerGroup> _f$playerGroup =
      Field('playerGroup', _$playerGroup);

  @override
  final MappableFields<UpdatePlayerPrices> fields = const {
    #playerGroup: _f$playerGroup,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'updatePlayerPrices';
  @override
  late final ClassMapperBase superMapper =
      DashboardEventMapper.ensureInitialized();

  static UpdatePlayerPrices _instantiate(DecodingData data) {
    return UpdatePlayerPrices(playerGroup: data.dec(_f$playerGroup));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdatePlayerPrices fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdatePlayerPrices>(map);
  }

  static UpdatePlayerPrices fromJson(String json) {
    return ensureInitialized().decodeJson<UpdatePlayerPrices>(json);
  }
}

mixin UpdatePlayerPricesMappable {
  String toJson() {
    return UpdatePlayerPricesMapper.ensureInitialized()
        .encodeJson<UpdatePlayerPrices>(this as UpdatePlayerPrices);
  }

  Map<String, dynamic> toMap() {
    return UpdatePlayerPricesMapper.ensureInitialized()
        .encodeMap<UpdatePlayerPrices>(this as UpdatePlayerPrices);
  }

  UpdatePlayerPricesCopyWith<UpdatePlayerPrices, UpdatePlayerPrices,
          UpdatePlayerPrices>
      get copyWith => _UpdatePlayerPricesCopyWithImpl<UpdatePlayerPrices,
          UpdatePlayerPrices>(this as UpdatePlayerPrices, $identity, $identity);
  @override
  String toString() {
    return UpdatePlayerPricesMapper.ensureInitialized()
        .stringifyValue(this as UpdatePlayerPrices);
  }

  @override
  bool operator ==(Object other) {
    return UpdatePlayerPricesMapper.ensureInitialized()
        .equalsValue(this as UpdatePlayerPrices, other);
  }

  @override
  int get hashCode {
    return UpdatePlayerPricesMapper.ensureInitialized()
        .hashValue(this as UpdatePlayerPrices);
  }
}

extension UpdatePlayerPricesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdatePlayerPrices, $Out> {
  UpdatePlayerPricesCopyWith<$R, UpdatePlayerPrices, $Out>
      get $asUpdatePlayerPrices => $base.as(
          (v, t, t2) => _UpdatePlayerPricesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UpdatePlayerPricesCopyWith<$R, $In extends UpdatePlayerPrices,
    $Out> implements DashboardEventCopyWith<$R, $In, $Out> {
  @override
  $R call({PlayerGroup? playerGroup});
  UpdatePlayerPricesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdatePlayerPricesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdatePlayerPrices, $Out>
    implements UpdatePlayerPricesCopyWith<$R, UpdatePlayerPrices, $Out> {
  _UpdatePlayerPricesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdatePlayerPrices> $mapper =
      UpdatePlayerPricesMapper.ensureInitialized();
  @override
  $R call({PlayerGroup? playerGroup}) => $apply(
      FieldCopyWithData({if (playerGroup != null) #playerGroup: playerGroup}));
  @override
  UpdatePlayerPrices $make(CopyWithData data) => UpdatePlayerPrices(
      playerGroup: data.get(#playerGroup, or: $value.playerGroup));

  @override
  UpdatePlayerPricesCopyWith<$R2, UpdatePlayerPrices, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UpdatePlayerPricesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SwitchHighRatedPositionGroupMapper
    extends SubClassMapperBase<SwitchHighRatedPositionGroup> {
  SwitchHighRatedPositionGroupMapper._();

  static SwitchHighRatedPositionGroupMapper? _instance;
  static SwitchHighRatedPositionGroupMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = SwitchHighRatedPositionGroupMapper._());
      DashboardEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SwitchHighRatedPositionGroup';

  static PositionGroup? _$positionGroup(SwitchHighRatedPositionGroup v) =>
      v.positionGroup;
  static const Field<SwitchHighRatedPositionGroup, PositionGroup>
      _f$positionGroup = Field('positionGroup', _$positionGroup, opt: true);

  @override
  final MappableFields<SwitchHighRatedPositionGroup> fields = const {
    #positionGroup: _f$positionGroup,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'switchHighRatedPositionGroup';
  @override
  late final ClassMapperBase superMapper =
      DashboardEventMapper.ensureInitialized();

  static SwitchHighRatedPositionGroup _instantiate(DecodingData data) {
    return SwitchHighRatedPositionGroup(
        positionGroup: data.dec(_f$positionGroup));
  }

  @override
  final Function instantiate = _instantiate;

  static SwitchHighRatedPositionGroup fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SwitchHighRatedPositionGroup>(map);
  }

  static SwitchHighRatedPositionGroup fromJson(String json) {
    return ensureInitialized().decodeJson<SwitchHighRatedPositionGroup>(json);
  }
}

mixin SwitchHighRatedPositionGroupMappable {
  String toJson() {
    return SwitchHighRatedPositionGroupMapper.ensureInitialized()
        .encodeJson<SwitchHighRatedPositionGroup>(
            this as SwitchHighRatedPositionGroup);
  }

  Map<String, dynamic> toMap() {
    return SwitchHighRatedPositionGroupMapper.ensureInitialized()
        .encodeMap<SwitchHighRatedPositionGroup>(
            this as SwitchHighRatedPositionGroup);
  }

  SwitchHighRatedPositionGroupCopyWith<SwitchHighRatedPositionGroup,
          SwitchHighRatedPositionGroup, SwitchHighRatedPositionGroup>
      get copyWith => _SwitchHighRatedPositionGroupCopyWithImpl<
              SwitchHighRatedPositionGroup, SwitchHighRatedPositionGroup>(
          this as SwitchHighRatedPositionGroup, $identity, $identity);
  @override
  String toString() {
    return SwitchHighRatedPositionGroupMapper.ensureInitialized()
        .stringifyValue(this as SwitchHighRatedPositionGroup);
  }

  @override
  bool operator ==(Object other) {
    return SwitchHighRatedPositionGroupMapper.ensureInitialized()
        .equalsValue(this as SwitchHighRatedPositionGroup, other);
  }

  @override
  int get hashCode {
    return SwitchHighRatedPositionGroupMapper.ensureInitialized()
        .hashValue(this as SwitchHighRatedPositionGroup);
  }
}

extension SwitchHighRatedPositionGroupValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SwitchHighRatedPositionGroup, $Out> {
  SwitchHighRatedPositionGroupCopyWith<$R, SwitchHighRatedPositionGroup, $Out>
      get $asSwitchHighRatedPositionGroup => $base.as((v, t, t2) =>
          _SwitchHighRatedPositionGroupCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SwitchHighRatedPositionGroupCopyWith<
    $R,
    $In extends SwitchHighRatedPositionGroup,
    $Out> implements DashboardEventCopyWith<$R, $In, $Out> {
  @override
  $R call({PositionGroup? positionGroup});
  SwitchHighRatedPositionGroupCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SwitchHighRatedPositionGroupCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SwitchHighRatedPositionGroup, $Out>
    implements
        SwitchHighRatedPositionGroupCopyWith<$R, SwitchHighRatedPositionGroup,
            $Out> {
  _SwitchHighRatedPositionGroupCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SwitchHighRatedPositionGroup> $mapper =
      SwitchHighRatedPositionGroupMapper.ensureInitialized();
  @override
  $R call({Object? positionGroup = $none}) => $apply(FieldCopyWithData(
      {if (positionGroup != $none) #positionGroup: positionGroup}));
  @override
  SwitchHighRatedPositionGroup $make(CopyWithData data) =>
      SwitchHighRatedPositionGroup(
          positionGroup: data.get(#positionGroup, or: $value.positionGroup));

  @override
  SwitchHighRatedPositionGroupCopyWith<$R2, SwitchHighRatedPositionGroup, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SwitchHighRatedPositionGroupCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}

class SwitchRaritySquadMapper extends SubClassMapperBase<SwitchRaritySquad> {
  SwitchRaritySquadMapper._();

  static SwitchRaritySquadMapper? _instance;
  static SwitchRaritySquadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SwitchRaritySquadMapper._());
      DashboardEventMapper.ensureInitialized().addSubMapper(_instance!);
      RaritySquadMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SwitchRaritySquad';

  static RaritySquad? _$raritySquad(SwitchRaritySquad v) => v.raritySquad;
  static const Field<SwitchRaritySquad, RaritySquad> _f$raritySquad =
      Field('raritySquad', _$raritySquad, opt: true);

  @override
  final MappableFields<SwitchRaritySquad> fields = const {
    #raritySquad: _f$raritySquad,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'switchRaritySquad';
  @override
  late final ClassMapperBase superMapper =
      DashboardEventMapper.ensureInitialized();

  static SwitchRaritySquad _instantiate(DecodingData data) {
    return SwitchRaritySquad(raritySquad: data.dec(_f$raritySquad));
  }

  @override
  final Function instantiate = _instantiate;

  static SwitchRaritySquad fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SwitchRaritySquad>(map);
  }

  static SwitchRaritySquad fromJson(String json) {
    return ensureInitialized().decodeJson<SwitchRaritySquad>(json);
  }
}

mixin SwitchRaritySquadMappable {
  String toJson() {
    return SwitchRaritySquadMapper.ensureInitialized()
        .encodeJson<SwitchRaritySquad>(this as SwitchRaritySquad);
  }

  Map<String, dynamic> toMap() {
    return SwitchRaritySquadMapper.ensureInitialized()
        .encodeMap<SwitchRaritySquad>(this as SwitchRaritySquad);
  }

  SwitchRaritySquadCopyWith<SwitchRaritySquad, SwitchRaritySquad,
          SwitchRaritySquad>
      get copyWith =>
          _SwitchRaritySquadCopyWithImpl<SwitchRaritySquad, SwitchRaritySquad>(
              this as SwitchRaritySquad, $identity, $identity);
  @override
  String toString() {
    return SwitchRaritySquadMapper.ensureInitialized()
        .stringifyValue(this as SwitchRaritySquad);
  }

  @override
  bool operator ==(Object other) {
    return SwitchRaritySquadMapper.ensureInitialized()
        .equalsValue(this as SwitchRaritySquad, other);
  }

  @override
  int get hashCode {
    return SwitchRaritySquadMapper.ensureInitialized()
        .hashValue(this as SwitchRaritySquad);
  }
}

extension SwitchRaritySquadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SwitchRaritySquad, $Out> {
  SwitchRaritySquadCopyWith<$R, SwitchRaritySquad, $Out>
      get $asSwitchRaritySquad => $base
          .as((v, t, t2) => _SwitchRaritySquadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SwitchRaritySquadCopyWith<$R, $In extends SwitchRaritySquad,
    $Out> implements DashboardEventCopyWith<$R, $In, $Out> {
  RaritySquadCopyWith<$R, RaritySquad, RaritySquad>? get raritySquad;
  @override
  $R call({RaritySquad? raritySquad});
  SwitchRaritySquadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SwitchRaritySquadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SwitchRaritySquad, $Out>
    implements SwitchRaritySquadCopyWith<$R, SwitchRaritySquad, $Out> {
  _SwitchRaritySquadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SwitchRaritySquad> $mapper =
      SwitchRaritySquadMapper.ensureInitialized();
  @override
  RaritySquadCopyWith<$R, RaritySquad, RaritySquad>? get raritySquad =>
      $value.raritySquad?.copyWith.$chain((v) => call(raritySquad: v));
  @override
  $R call({Object? raritySquad = $none}) => $apply(
      FieldCopyWithData({if (raritySquad != $none) #raritySquad: raritySquad}));
  @override
  SwitchRaritySquad $make(CopyWithData data) => SwitchRaritySquad(
      raritySquad: data.get(#raritySquad, or: $value.raritySquad));

  @override
  SwitchRaritySquadCopyWith<$R2, SwitchRaritySquad, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SwitchRaritySquadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PlayerTapMapper extends SubClassMapperBase<PlayerTap> {
  PlayerTapMapper._();

  static PlayerTapMapper? _instance;
  static PlayerTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerTapMapper._());
      DashboardEventMapper.ensureInitialized().addSubMapper(_instance!);
      PlayerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerTap';

  static Player _$player(PlayerTap v) => v.player;
  static const Field<PlayerTap, Player> _f$player = Field('player', _$player);
  static bool _$fromSbc(PlayerTap v) => v.fromSbc;
  static const Field<PlayerTap, bool> _f$fromSbc =
      Field('fromSbc', _$fromSbc, opt: true, def: false);

  @override
  final MappableFields<PlayerTap> fields = const {
    #player: _f$player,
    #fromSbc: _f$fromSbc,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'playerTap';
  @override
  late final ClassMapperBase superMapper =
      DashboardEventMapper.ensureInitialized();

  static PlayerTap _instantiate(DecodingData data) {
    return PlayerTap(
        player: data.dec(_f$player), fromSbc: data.dec(_f$fromSbc));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerTap>(map);
  }

  static PlayerTap fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerTap>(json);
  }
}

mixin PlayerTapMappable {
  String toJson() {
    return PlayerTapMapper.ensureInitialized()
        .encodeJson<PlayerTap>(this as PlayerTap);
  }

  Map<String, dynamic> toMap() {
    return PlayerTapMapper.ensureInitialized()
        .encodeMap<PlayerTap>(this as PlayerTap);
  }

  PlayerTapCopyWith<PlayerTap, PlayerTap, PlayerTap> get copyWith =>
      _PlayerTapCopyWithImpl<PlayerTap, PlayerTap>(
          this as PlayerTap, $identity, $identity);
  @override
  String toString() {
    return PlayerTapMapper.ensureInitialized()
        .stringifyValue(this as PlayerTap);
  }

  @override
  bool operator ==(Object other) {
    return PlayerTapMapper.ensureInitialized()
        .equalsValue(this as PlayerTap, other);
  }

  @override
  int get hashCode {
    return PlayerTapMapper.ensureInitialized().hashValue(this as PlayerTap);
  }
}

extension PlayerTapValueCopy<$R, $Out> on ObjectCopyWith<$R, PlayerTap, $Out> {
  PlayerTapCopyWith<$R, PlayerTap, $Out> get $asPlayerTap =>
      $base.as((v, t, t2) => _PlayerTapCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlayerTapCopyWith<$R, $In extends PlayerTap, $Out>
    implements DashboardEventCopyWith<$R, $In, $Out> {
  PlayerCopyWith<$R, Player, Player> get player;
  @override
  $R call({Player? player, bool? fromSbc});
  PlayerTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayerTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayerTap, $Out>
    implements PlayerTapCopyWith<$R, PlayerTap, $Out> {
  _PlayerTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayerTap> $mapper =
      PlayerTapMapper.ensureInitialized();
  @override
  PlayerCopyWith<$R, Player, Player> get player =>
      $value.player.copyWith.$chain((v) => call(player: v));
  @override
  $R call({Player? player, bool? fromSbc}) => $apply(FieldCopyWithData({
        if (player != null) #player: player,
        if (fromSbc != null) #fromSbc: fromSbc
      }));
  @override
  PlayerTap $make(CopyWithData data) => PlayerTap(
      player: data.get(#player, or: $value.player),
      fromSbc: data.get(#fromSbc, or: $value.fromSbc));

  @override
  PlayerTapCopyWith<$R2, PlayerTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerTapCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SearchTapMapper extends SubClassMapperBase<SearchTap> {
  SearchTapMapper._();

  static SearchTapMapper? _instance;
  static SearchTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchTapMapper._());
      DashboardEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SearchTap';

  @override
  final MappableFields<SearchTap> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'searchTap';
  @override
  late final ClassMapperBase superMapper =
      DashboardEventMapper.ensureInitialized();

  static SearchTap _instantiate(DecodingData data) {
    return SearchTap();
  }

  @override
  final Function instantiate = _instantiate;

  static SearchTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchTap>(map);
  }

  static SearchTap fromJson(String json) {
    return ensureInitialized().decodeJson<SearchTap>(json);
  }
}

mixin SearchTapMappable {
  String toJson() {
    return SearchTapMapper.ensureInitialized()
        .encodeJson<SearchTap>(this as SearchTap);
  }

  Map<String, dynamic> toMap() {
    return SearchTapMapper.ensureInitialized()
        .encodeMap<SearchTap>(this as SearchTap);
  }

  SearchTapCopyWith<SearchTap, SearchTap, SearchTap> get copyWith =>
      _SearchTapCopyWithImpl<SearchTap, SearchTap>(
          this as SearchTap, $identity, $identity);
  @override
  String toString() {
    return SearchTapMapper.ensureInitialized()
        .stringifyValue(this as SearchTap);
  }

  @override
  bool operator ==(Object other) {
    return SearchTapMapper.ensureInitialized()
        .equalsValue(this as SearchTap, other);
  }

  @override
  int get hashCode {
    return SearchTapMapper.ensureInitialized().hashValue(this as SearchTap);
  }
}

extension SearchTapValueCopy<$R, $Out> on ObjectCopyWith<$R, SearchTap, $Out> {
  SearchTapCopyWith<$R, SearchTap, $Out> get $asSearchTap =>
      $base.as((v, t, t2) => _SearchTapCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SearchTapCopyWith<$R, $In extends SearchTap, $Out>
    implements DashboardEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  SearchTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SearchTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchTap, $Out>
    implements SearchTapCopyWith<$R, SearchTap, $Out> {
  _SearchTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchTap> $mapper =
      SearchTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SearchTap $make(CopyWithData data) => SearchTap();

  @override
  SearchTapCopyWith<$R2, SearchTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchTapCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CheapestByPlayerRatingTapMapper
    extends SubClassMapperBase<CheapestByPlayerRatingTap> {
  CheapestByPlayerRatingTapMapper._();

  static CheapestByPlayerRatingTapMapper? _instance;
  static CheapestByPlayerRatingTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = CheapestByPlayerRatingTapMapper._());
      DashboardEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CheapestByPlayerRatingTap';

  @override
  final MappableFields<CheapestByPlayerRatingTap> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'cheapestPlayerByRatingTap';
  @override
  late final ClassMapperBase superMapper =
      DashboardEventMapper.ensureInitialized();

  static CheapestByPlayerRatingTap _instantiate(DecodingData data) {
    return CheapestByPlayerRatingTap();
  }

  @override
  final Function instantiate = _instantiate;

  static CheapestByPlayerRatingTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CheapestByPlayerRatingTap>(map);
  }

  static CheapestByPlayerRatingTap fromJson(String json) {
    return ensureInitialized().decodeJson<CheapestByPlayerRatingTap>(json);
  }
}

mixin CheapestByPlayerRatingTapMappable {
  String toJson() {
    return CheapestByPlayerRatingTapMapper.ensureInitialized()
        .encodeJson<CheapestByPlayerRatingTap>(
            this as CheapestByPlayerRatingTap);
  }

  Map<String, dynamic> toMap() {
    return CheapestByPlayerRatingTapMapper.ensureInitialized()
        .encodeMap<CheapestByPlayerRatingTap>(
            this as CheapestByPlayerRatingTap);
  }

  CheapestByPlayerRatingTapCopyWith<CheapestByPlayerRatingTap,
          CheapestByPlayerRatingTap, CheapestByPlayerRatingTap>
      get copyWith => _CheapestByPlayerRatingTapCopyWithImpl<
              CheapestByPlayerRatingTap, CheapestByPlayerRatingTap>(
          this as CheapestByPlayerRatingTap, $identity, $identity);
  @override
  String toString() {
    return CheapestByPlayerRatingTapMapper.ensureInitialized()
        .stringifyValue(this as CheapestByPlayerRatingTap);
  }

  @override
  bool operator ==(Object other) {
    return CheapestByPlayerRatingTapMapper.ensureInitialized()
        .equalsValue(this as CheapestByPlayerRatingTap, other);
  }

  @override
  int get hashCode {
    return CheapestByPlayerRatingTapMapper.ensureInitialized()
        .hashValue(this as CheapestByPlayerRatingTap);
  }
}

extension CheapestByPlayerRatingTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CheapestByPlayerRatingTap, $Out> {
  CheapestByPlayerRatingTapCopyWith<$R, CheapestByPlayerRatingTap, $Out>
      get $asCheapestByPlayerRatingTap => $base.as((v, t, t2) =>
          _CheapestByPlayerRatingTapCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CheapestByPlayerRatingTapCopyWith<
    $R,
    $In extends CheapestByPlayerRatingTap,
    $Out> implements DashboardEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  CheapestByPlayerRatingTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CheapestByPlayerRatingTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CheapestByPlayerRatingTap, $Out>
    implements
        CheapestByPlayerRatingTapCopyWith<$R, CheapestByPlayerRatingTap, $Out> {
  _CheapestByPlayerRatingTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CheapestByPlayerRatingTap> $mapper =
      CheapestByPlayerRatingTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  CheapestByPlayerRatingTap $make(CopyWithData data) =>
      CheapestByPlayerRatingTap();

  @override
  CheapestByPlayerRatingTapCopyWith<$R2, CheapestByPlayerRatingTap, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CheapestByPlayerRatingTapCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class IndexTapMapper extends SubClassMapperBase<IndexTap> {
  IndexTapMapper._();

  static IndexTapMapper? _instance;
  static IndexTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IndexTapMapper._());
      DashboardEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'IndexTap';

  static IndexType _$indexType(IndexTap v) => v.indexType;
  static const Field<IndexTap, IndexType> _f$indexType =
      Field('indexType', _$indexType);

  @override
  final MappableFields<IndexTap> fields = const {
    #indexType: _f$indexType,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'indexTap';
  @override
  late final ClassMapperBase superMapper =
      DashboardEventMapper.ensureInitialized();

  static IndexTap _instantiate(DecodingData data) {
    return IndexTap(indexType: data.dec(_f$indexType));
  }

  @override
  final Function instantiate = _instantiate;

  static IndexTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IndexTap>(map);
  }

  static IndexTap fromJson(String json) {
    return ensureInitialized().decodeJson<IndexTap>(json);
  }
}

mixin IndexTapMappable {
  String toJson() {
    return IndexTapMapper.ensureInitialized()
        .encodeJson<IndexTap>(this as IndexTap);
  }

  Map<String, dynamic> toMap() {
    return IndexTapMapper.ensureInitialized()
        .encodeMap<IndexTap>(this as IndexTap);
  }

  IndexTapCopyWith<IndexTap, IndexTap, IndexTap> get copyWith =>
      _IndexTapCopyWithImpl<IndexTap, IndexTap>(
          this as IndexTap, $identity, $identity);
  @override
  String toString() {
    return IndexTapMapper.ensureInitialized().stringifyValue(this as IndexTap);
  }

  @override
  bool operator ==(Object other) {
    return IndexTapMapper.ensureInitialized()
        .equalsValue(this as IndexTap, other);
  }

  @override
  int get hashCode {
    return IndexTapMapper.ensureInitialized().hashValue(this as IndexTap);
  }
}

extension IndexTapValueCopy<$R, $Out> on ObjectCopyWith<$R, IndexTap, $Out> {
  IndexTapCopyWith<$R, IndexTap, $Out> get $asIndexTap =>
      $base.as((v, t, t2) => _IndexTapCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class IndexTapCopyWith<$R, $In extends IndexTap, $Out>
    implements DashboardEventCopyWith<$R, $In, $Out> {
  @override
  $R call({IndexType? indexType});
  IndexTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IndexTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IndexTap, $Out>
    implements IndexTapCopyWith<$R, IndexTap, $Out> {
  _IndexTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IndexTap> $mapper =
      IndexTapMapper.ensureInitialized();
  @override
  $R call({IndexType? indexType}) =>
      $apply(FieldCopyWithData({if (indexType != null) #indexType: indexType}));
  @override
  IndexTap $make(CopyWithData data) =>
      IndexTap(indexType: data.get(#indexType, or: $value.indexType));

  @override
  IndexTapCopyWith<$R2, IndexTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IndexTapCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToggleIconsMapper extends SubClassMapperBase<ToggleIcons> {
  ToggleIconsMapper._();

  static ToggleIconsMapper? _instance;
  static ToggleIconsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToggleIconsMapper._());
      DashboardEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ToggleIcons';

  @override
  final MappableFields<ToggleIcons> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'toggleIcons';
  @override
  late final ClassMapperBase superMapper =
      DashboardEventMapper.ensureInitialized();

  static ToggleIcons _instantiate(DecodingData data) {
    return ToggleIcons();
  }

  @override
  final Function instantiate = _instantiate;

  static ToggleIcons fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToggleIcons>(map);
  }

  static ToggleIcons fromJson(String json) {
    return ensureInitialized().decodeJson<ToggleIcons>(json);
  }
}

mixin ToggleIconsMappable {
  String toJson() {
    return ToggleIconsMapper.ensureInitialized()
        .encodeJson<ToggleIcons>(this as ToggleIcons);
  }

  Map<String, dynamic> toMap() {
    return ToggleIconsMapper.ensureInitialized()
        .encodeMap<ToggleIcons>(this as ToggleIcons);
  }

  ToggleIconsCopyWith<ToggleIcons, ToggleIcons, ToggleIcons> get copyWith =>
      _ToggleIconsCopyWithImpl<ToggleIcons, ToggleIcons>(
          this as ToggleIcons, $identity, $identity);
  @override
  String toString() {
    return ToggleIconsMapper.ensureInitialized()
        .stringifyValue(this as ToggleIcons);
  }

  @override
  bool operator ==(Object other) {
    return ToggleIconsMapper.ensureInitialized()
        .equalsValue(this as ToggleIcons, other);
  }

  @override
  int get hashCode {
    return ToggleIconsMapper.ensureInitialized().hashValue(this as ToggleIcons);
  }
}

extension ToggleIconsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ToggleIcons, $Out> {
  ToggleIconsCopyWith<$R, ToggleIcons, $Out> get $asToggleIcons =>
      $base.as((v, t, t2) => _ToggleIconsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToggleIconsCopyWith<$R, $In extends ToggleIcons, $Out>
    implements DashboardEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  ToggleIconsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ToggleIconsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToggleIcons, $Out>
    implements ToggleIconsCopyWith<$R, ToggleIcons, $Out> {
  _ToggleIconsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToggleIcons> $mapper =
      ToggleIconsMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  ToggleIcons $make(CopyWithData data) => ToggleIcons();

  @override
  ToggleIconsCopyWith<$R2, ToggleIcons, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ToggleIconsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DashboardStateMapper extends ClassMapperBase<DashboardState> {
  DashboardStateMapper._();

  static DashboardStateMapper? _instance;
  static DashboardStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DashboardStateMapper._());
      ProcessStateMapper.ensureInitialized();
      IndexDataMapper.ensureInitialized();
      RaritySquadMapper.ensureInitialized();
      PlayerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DashboardState';

  static ProcessState _$processState(DashboardState v) => v.processState;
  static const Field<DashboardState, ProcessState> _f$processState = Field(
      'processState', _$processState,
      opt: true, def: ProcessState.loading);
  static ProcessState _$positionalPlayersProcessState(DashboardState v) =>
      v.positionalPlayersProcessState;
  static const Field<DashboardState, ProcessState>
      _f$positionalPlayersProcessState = Field(
          'positionalPlayersProcessState', _$positionalPlayersProcessState,
          opt: true, def: ProcessState.success);
  static List<IndexData>? _$indexes(DashboardState v) => v.indexes;
  static const Field<DashboardState, List<IndexData>> _f$indexes =
      Field('indexes', _$indexes, opt: true);
  static PositionGroup _$positionGroup(DashboardState v) => v.positionGroup;
  static const Field<DashboardState, PositionGroup> _f$positionGroup =
      Field('positionGroup', _$positionGroup, opt: true, def: const Forwards());
  static RaritySquad? _$raritySquad(DashboardState v) => v.raritySquad;
  static const Field<DashboardState, RaritySquad> _f$raritySquad =
      Field('raritySquad', _$raritySquad, opt: true);
  static Map<RaritySquad?, List<Player>?> _$raritySquadPlayers(
          DashboardState v) =>
      v.raritySquadPlayers;
  static const Field<DashboardState, Map<RaritySquad?, List<Player>?>>
      _f$raritySquadPlayers = Field('raritySquadPlayers', _$raritySquadPlayers,
          opt: true, def: const {});
  static List<Player> _$sbcPlayers(DashboardState v) => v.sbcPlayers;
  static const Field<DashboardState, List<Player>> _f$sbcPlayers =
      Field('sbcPlayers', _$sbcPlayers, opt: true, def: const []);
  static List<Player> _$attackPlayers(DashboardState v) => v.attackPlayers;
  static const Field<DashboardState, List<Player>> _f$attackPlayers =
      Field('attackPlayers', _$attackPlayers, opt: true, def: const []);
  static List<Player> _$midfielderPlayers(DashboardState v) =>
      v.midfielderPlayers;
  static const Field<DashboardState, List<Player>> _f$midfielderPlayers =
      Field('midfielderPlayers', _$midfielderPlayers, opt: true, def: const []);
  static List<Player> _$defencePlayers(DashboardState v) => v.defencePlayers;
  static const Field<DashboardState, List<Player>> _f$defencePlayers =
      Field('defencePlayers', _$defencePlayers, opt: true, def: const []);
  static List<Player> _$goalKeeperPlayers(DashboardState v) =>
      v.goalKeeperPlayers;
  static const Field<DashboardState, List<Player>> _f$goalKeeperPlayers =
      Field('goalKeeperPlayers', _$goalKeeperPlayers, opt: true, def: const []);
  static bool _$showIcons(DashboardState v) => v.showIcons;
  static const Field<DashboardState, bool> _f$showIcons =
      Field('showIcons', _$showIcons, opt: true, def: true);

  @override
  final MappableFields<DashboardState> fields = const {
    #processState: _f$processState,
    #positionalPlayersProcessState: _f$positionalPlayersProcessState,
    #indexes: _f$indexes,
    #positionGroup: _f$positionGroup,
    #raritySquad: _f$raritySquad,
    #raritySquadPlayers: _f$raritySquadPlayers,
    #sbcPlayers: _f$sbcPlayers,
    #attackPlayers: _f$attackPlayers,
    #midfielderPlayers: _f$midfielderPlayers,
    #defencePlayers: _f$defencePlayers,
    #goalKeeperPlayers: _f$goalKeeperPlayers,
    #showIcons: _f$showIcons,
  };

  static DashboardState _instantiate(DecodingData data) {
    return DashboardState(
        processState: data.dec(_f$processState),
        positionalPlayersProcessState:
            data.dec(_f$positionalPlayersProcessState),
        indexes: data.dec(_f$indexes),
        positionGroup: data.dec(_f$positionGroup),
        raritySquad: data.dec(_f$raritySquad),
        raritySquadPlayers: data.dec(_f$raritySquadPlayers),
        sbcPlayers: data.dec(_f$sbcPlayers),
        attackPlayers: data.dec(_f$attackPlayers),
        midfielderPlayers: data.dec(_f$midfielderPlayers),
        defencePlayers: data.dec(_f$defencePlayers),
        goalKeeperPlayers: data.dec(_f$goalKeeperPlayers),
        showIcons: data.dec(_f$showIcons));
  }

  @override
  final Function instantiate = _instantiate;

  static DashboardState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DashboardState>(map);
  }

  static DashboardState fromJson(String json) {
    return ensureInitialized().decodeJson<DashboardState>(json);
  }
}

mixin DashboardStateMappable {
  String toJson() {
    return DashboardStateMapper.ensureInitialized()
        .encodeJson<DashboardState>(this as DashboardState);
  }

  Map<String, dynamic> toMap() {
    return DashboardStateMapper.ensureInitialized()
        .encodeMap<DashboardState>(this as DashboardState);
  }

  DashboardStateCopyWith<DashboardState, DashboardState, DashboardState>
      get copyWith =>
          _DashboardStateCopyWithImpl<DashboardState, DashboardState>(
              this as DashboardState, $identity, $identity);
  @override
  String toString() {
    return DashboardStateMapper.ensureInitialized()
        .stringifyValue(this as DashboardState);
  }

  @override
  bool operator ==(Object other) {
    return DashboardStateMapper.ensureInitialized()
        .equalsValue(this as DashboardState, other);
  }

  @override
  int get hashCode {
    return DashboardStateMapper.ensureInitialized()
        .hashValue(this as DashboardState);
  }
}

extension DashboardStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DashboardState, $Out> {
  DashboardStateCopyWith<$R, DashboardState, $Out> get $asDashboardState =>
      $base.as((v, t, t2) => _DashboardStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DashboardStateCopyWith<$R, $In extends DashboardState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, IndexData, IndexDataCopyWith<$R, IndexData, IndexData>>?
      get indexes;
  RaritySquadCopyWith<$R, RaritySquad, RaritySquad>? get raritySquad;
  MapCopyWith<$R, RaritySquad?, List<Player>?,
      ObjectCopyWith<$R, List<Player>?, List<Player>?>?> get raritySquadPlayers;
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>> get sbcPlayers;
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>
      get attackPlayers;
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>
      get midfielderPlayers;
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>
      get defencePlayers;
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>
      get goalKeeperPlayers;
  $R call(
      {ProcessState? processState,
      ProcessState? positionalPlayersProcessState,
      List<IndexData>? indexes,
      PositionGroup? positionGroup,
      RaritySquad? raritySquad,
      Map<RaritySquad?, List<Player>?>? raritySquadPlayers,
      List<Player>? sbcPlayers,
      List<Player>? attackPlayers,
      List<Player>? midfielderPlayers,
      List<Player>? defencePlayers,
      List<Player>? goalKeeperPlayers,
      bool? showIcons});
  DashboardStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DashboardStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DashboardState, $Out>
    implements DashboardStateCopyWith<$R, DashboardState, $Out> {
  _DashboardStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DashboardState> $mapper =
      DashboardStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, IndexData, IndexDataCopyWith<$R, IndexData, IndexData>>?
      get indexes => $value.indexes != null
          ? ListCopyWith($value.indexes!, (v, t) => v.copyWith.$chain(t),
              (v) => call(indexes: v))
          : null;
  @override
  RaritySquadCopyWith<$R, RaritySquad, RaritySquad>? get raritySquad =>
      $value.raritySquad?.copyWith.$chain((v) => call(raritySquad: v));
  @override
  MapCopyWith<$R, RaritySquad?, List<Player>?,
          ObjectCopyWith<$R, List<Player>?, List<Player>?>?>
      get raritySquadPlayers => MapCopyWith(
          $value.raritySquadPlayers,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(raritySquadPlayers: v));
  @override
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>> get sbcPlayers =>
      ListCopyWith($value.sbcPlayers, (v, t) => v.copyWith.$chain(t),
          (v) => call(sbcPlayers: v));
  @override
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>
      get attackPlayers => ListCopyWith($value.attackPlayers,
          (v, t) => v.copyWith.$chain(t), (v) => call(attackPlayers: v));
  @override
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>
      get midfielderPlayers => ListCopyWith($value.midfielderPlayers,
          (v, t) => v.copyWith.$chain(t), (v) => call(midfielderPlayers: v));
  @override
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>
      get defencePlayers => ListCopyWith($value.defencePlayers,
          (v, t) => v.copyWith.$chain(t), (v) => call(defencePlayers: v));
  @override
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>
      get goalKeeperPlayers => ListCopyWith($value.goalKeeperPlayers,
          (v, t) => v.copyWith.$chain(t), (v) => call(goalKeeperPlayers: v));
  @override
  $R call(
          {ProcessState? processState,
          ProcessState? positionalPlayersProcessState,
          Object? indexes = $none,
          PositionGroup? positionGroup,
          Object? raritySquad = $none,
          Map<RaritySquad?, List<Player>?>? raritySquadPlayers,
          List<Player>? sbcPlayers,
          List<Player>? attackPlayers,
          List<Player>? midfielderPlayers,
          List<Player>? defencePlayers,
          List<Player>? goalKeeperPlayers,
          bool? showIcons}) =>
      $apply(FieldCopyWithData({
        if (processState != null) #processState: processState,
        if (positionalPlayersProcessState != null)
          #positionalPlayersProcessState: positionalPlayersProcessState,
        if (indexes != $none) #indexes: indexes,
        if (positionGroup != null) #positionGroup: positionGroup,
        if (raritySquad != $none) #raritySquad: raritySquad,
        if (raritySquadPlayers != null) #raritySquadPlayers: raritySquadPlayers,
        if (sbcPlayers != null) #sbcPlayers: sbcPlayers,
        if (attackPlayers != null) #attackPlayers: attackPlayers,
        if (midfielderPlayers != null) #midfielderPlayers: midfielderPlayers,
        if (defencePlayers != null) #defencePlayers: defencePlayers,
        if (goalKeeperPlayers != null) #goalKeeperPlayers: goalKeeperPlayers,
        if (showIcons != null) #showIcons: showIcons
      }));
  @override
  DashboardState $make(CopyWithData data) => DashboardState(
      processState: data.get(#processState, or: $value.processState),
      positionalPlayersProcessState: data.get(#positionalPlayersProcessState,
          or: $value.positionalPlayersProcessState),
      indexes: data.get(#indexes, or: $value.indexes),
      positionGroup: data.get(#positionGroup, or: $value.positionGroup),
      raritySquad: data.get(#raritySquad, or: $value.raritySquad),
      raritySquadPlayers:
          data.get(#raritySquadPlayers, or: $value.raritySquadPlayers),
      sbcPlayers: data.get(#sbcPlayers, or: $value.sbcPlayers),
      attackPlayers: data.get(#attackPlayers, or: $value.attackPlayers),
      midfielderPlayers:
          data.get(#midfielderPlayers, or: $value.midfielderPlayers),
      defencePlayers: data.get(#defencePlayers, or: $value.defencePlayers),
      goalKeeperPlayers:
          data.get(#goalKeeperPlayers, or: $value.goalKeeperPlayers),
      showIcons: data.get(#showIcons, or: $value.showIcons));

  @override
  DashboardStateCopyWith<$R2, DashboardState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DashboardStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
