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
      PlayerTapMapper.ensureInitialized();
      SearchTapMapper.ensureInitialized();
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
      _InitCopyWithImpl(this as Init, $identity, $identity);
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
      $base.as((v, t, t2) => _InitCopyWithImpl(v, t, t2));
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
      _InitCopyWithImpl($value, $cast, t);
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
      get copyWith => _UpdatePlayerPricesCopyWithImpl(
          this as UpdatePlayerPrices, $identity, $identity);
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
      get $asUpdatePlayerPrices =>
          $base.as((v, t, t2) => _UpdatePlayerPricesCopyWithImpl(v, t, t2));
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
      _UpdatePlayerPricesCopyWithImpl($value, $cast, t);
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
      PositionGroupMapper.ensureInitialized();
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
      get copyWith => _SwitchHighRatedPositionGroupCopyWithImpl(
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
      get $asSwitchHighRatedPositionGroup => $base.as(
          (v, t, t2) => _SwitchHighRatedPositionGroupCopyWithImpl(v, t, t2));
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
          _SwitchHighRatedPositionGroupCopyWithImpl($value, $cast, t);
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

  @override
  final MappableFields<PlayerTap> fields = const {
    #player: _f$player,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'playerTap';
  @override
  late final ClassMapperBase superMapper =
      DashboardEventMapper.ensureInitialized();

  static PlayerTap _instantiate(DecodingData data) {
    return PlayerTap(player: data.dec(_f$player));
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
      _PlayerTapCopyWithImpl(this as PlayerTap, $identity, $identity);
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
      $base.as((v, t, t2) => _PlayerTapCopyWithImpl(v, t, t2));
}

abstract class PlayerTapCopyWith<$R, $In extends PlayerTap, $Out>
    implements DashboardEventCopyWith<$R, $In, $Out> {
  PlayerCopyWith<$R, Player, Player> get player;
  @override
  $R call({Player? player});
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
  $R call({Player? player}) =>
      $apply(FieldCopyWithData({if (player != null) #player: player}));
  @override
  PlayerTap $make(CopyWithData data) =>
      PlayerTap(player: data.get(#player, or: $value.player));

  @override
  PlayerTapCopyWith<$R2, PlayerTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerTapCopyWithImpl($value, $cast, t);
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
      _SearchTapCopyWithImpl(this as SearchTap, $identity, $identity);
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
      $base.as((v, t, t2) => _SearchTapCopyWithImpl(v, t, t2));
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
      _SearchTapCopyWithImpl($value, $cast, t);
}

class DashboardStateMapper extends ClassMapperBase<DashboardState> {
  DashboardStateMapper._();

  static DashboardStateMapper? _instance;
  static DashboardStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DashboardStateMapper._());
      ProcessStateMapper.ensureInitialized();
      IndexDataMapper.ensureInitialized();
      PositionGroupMapper.ensureInitialized();
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
  static List<IndexData>? _$indexes(DashboardState v) => v.indexes;
  static const Field<DashboardState, List<IndexData>> _f$indexes =
      Field('indexes', _$indexes, opt: true);
  static PositionGroup? _$positionGroup(DashboardState v) => v.positionGroup;
  static const Field<DashboardState, PositionGroup> _f$positionGroup = Field(
      'positionGroup', _$positionGroup,
      opt: true, def: PositionGroup.attack);
  static List<Player> _$recentPlayers(DashboardState v) => v.recentPlayers;
  static const Field<DashboardState, List<Player>> _f$recentPlayers =
      Field('recentPlayers', _$recentPlayers, opt: true, def: const []);
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

  @override
  final MappableFields<DashboardState> fields = const {
    #processState: _f$processState,
    #indexes: _f$indexes,
    #positionGroup: _f$positionGroup,
    #recentPlayers: _f$recentPlayers,
    #sbcPlayers: _f$sbcPlayers,
    #attackPlayers: _f$attackPlayers,
    #midfielderPlayers: _f$midfielderPlayers,
    #defencePlayers: _f$defencePlayers,
    #goalKeeperPlayers: _f$goalKeeperPlayers,
  };

  static DashboardState _instantiate(DecodingData data) {
    return DashboardState(
        processState: data.dec(_f$processState),
        indexes: data.dec(_f$indexes),
        positionGroup: data.dec(_f$positionGroup),
        recentPlayers: data.dec(_f$recentPlayers),
        sbcPlayers: data.dec(_f$sbcPlayers),
        attackPlayers: data.dec(_f$attackPlayers),
        midfielderPlayers: data.dec(_f$midfielderPlayers),
        defencePlayers: data.dec(_f$defencePlayers),
        goalKeeperPlayers: data.dec(_f$goalKeeperPlayers));
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
      get copyWith => _DashboardStateCopyWithImpl(
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
      $base.as((v, t, t2) => _DashboardStateCopyWithImpl(v, t, t2));
}

abstract class DashboardStateCopyWith<$R, $In extends DashboardState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, IndexData, IndexDataCopyWith<$R, IndexData, IndexData>>?
      get indexes;
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>
      get recentPlayers;
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
      List<IndexData>? indexes,
      PositionGroup? positionGroup,
      List<Player>? recentPlayers,
      List<Player>? sbcPlayers,
      List<Player>? attackPlayers,
      List<Player>? midfielderPlayers,
      List<Player>? defencePlayers,
      List<Player>? goalKeeperPlayers});
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
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>
      get recentPlayers => ListCopyWith($value.recentPlayers,
          (v, t) => v.copyWith.$chain(t), (v) => call(recentPlayers: v));
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
          Object? indexes = $none,
          Object? positionGroup = $none,
          List<Player>? recentPlayers,
          List<Player>? sbcPlayers,
          List<Player>? attackPlayers,
          List<Player>? midfielderPlayers,
          List<Player>? defencePlayers,
          List<Player>? goalKeeperPlayers}) =>
      $apply(FieldCopyWithData({
        if (processState != null) #processState: processState,
        if (indexes != $none) #indexes: indexes,
        if (positionGroup != $none) #positionGroup: positionGroup,
        if (recentPlayers != null) #recentPlayers: recentPlayers,
        if (sbcPlayers != null) #sbcPlayers: sbcPlayers,
        if (attackPlayers != null) #attackPlayers: attackPlayers,
        if (midfielderPlayers != null) #midfielderPlayers: midfielderPlayers,
        if (defencePlayers != null) #defencePlayers: defencePlayers,
        if (goalKeeperPlayers != null) #goalKeeperPlayers: goalKeeperPlayers
      }));
  @override
  DashboardState $make(CopyWithData data) => DashboardState(
      processState: data.get(#processState, or: $value.processState),
      indexes: data.get(#indexes, or: $value.indexes),
      positionGroup: data.get(#positionGroup, or: $value.positionGroup),
      recentPlayers: data.get(#recentPlayers, or: $value.recentPlayers),
      sbcPlayers: data.get(#sbcPlayers, or: $value.sbcPlayers),
      attackPlayers: data.get(#attackPlayers, or: $value.attackPlayers),
      midfielderPlayers:
          data.get(#midfielderPlayers, or: $value.midfielderPlayers),
      defencePlayers: data.get(#defencePlayers, or: $value.defencePlayers),
      goalKeeperPlayers:
          data.get(#goalKeeperPlayers, or: $value.goalKeeperPlayers));

  @override
  DashboardStateCopyWith<$R2, DashboardState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DashboardStateCopyWithImpl($value, $cast, t);
}
