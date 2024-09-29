// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'player_detail_bloc.dart';

class PlayerDetailEventMapper extends ClassMapperBase<PlayerDetailEvent> {
  PlayerDetailEventMapper._();

  static PlayerDetailEventMapper? _instance;
  static PlayerDetailEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerDetailEventMapper._());
      InitMapper.ensureInitialized();
      VersionTapMapper.ensureInitialized();
      LoadRolesMapper.ensureInitialized();
      LoadVersionsMapper.ensureInitialized();
      LoadPriceMapper.ensureInitialized();
      CompareTapMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerDetailEvent';

  @override
  final MappableFields<PlayerDetailEvent> fields = const {};

  static PlayerDetailEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass('PlayerDetailEvent',
        'playerDetailEvent', '${data.value['playerDetailEvent']}');
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerDetailEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerDetailEvent>(map);
  }

  static PlayerDetailEvent fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerDetailEvent>(json);
  }
}

mixin PlayerDetailEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  PlayerDetailEventCopyWith<PlayerDetailEvent, PlayerDetailEvent,
      PlayerDetailEvent> get copyWith;
}

abstract class PlayerDetailEventCopyWith<$R, $In extends PlayerDetailEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  PlayerDetailEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
      PlayerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Init';

  static Player _$player(Init v) => v.player;
  static const Field<Init, Player> _f$player = Field('player', _$player);

  @override
  final MappableFields<Init> fields = const {
    #player: _f$player,
  };

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'init';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static Init _instantiate(DecodingData data) {
    return Init(player: data.dec(_f$player));
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
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  PlayerCopyWith<$R, Player, Player> get player;
  @override
  $R call({Player? player});
  InitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InitCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Init, $Out>
    implements InitCopyWith<$R, Init, $Out> {
  _InitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Init> $mapper = InitMapper.ensureInitialized();
  @override
  PlayerCopyWith<$R, Player, Player> get player =>
      $value.player.copyWith.$chain((v) => call(player: v));
  @override
  $R call({Player? player}) =>
      $apply(FieldCopyWithData({if (player != null) #player: player}));
  @override
  Init $make(CopyWithData data) =>
      Init(player: data.get(#player, or: $value.player));

  @override
  InitCopyWith<$R2, Init, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _InitCopyWithImpl($value, $cast, t);
}

class VersionTapMapper extends SubClassMapperBase<VersionTap> {
  VersionTapMapper._();

  static VersionTapMapper? _instance;
  static VersionTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VersionTapMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'VersionTap';

  static int _$playerId(VersionTap v) => v.playerId;
  static const Field<VersionTap, int> _f$playerId =
      Field('playerId', _$playerId);
  static int _$versionId(VersionTap v) => v.versionId;
  static const Field<VersionTap, int> _f$versionId =
      Field('versionId', _$versionId);

  @override
  final MappableFields<VersionTap> fields = const {
    #playerId: _f$playerId,
    #versionId: _f$versionId,
  };

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'versionTap';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static VersionTap _instantiate(DecodingData data) {
    return VersionTap(
        playerId: data.dec(_f$playerId), versionId: data.dec(_f$versionId));
  }

  @override
  final Function instantiate = _instantiate;

  static VersionTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VersionTap>(map);
  }

  static VersionTap fromJson(String json) {
    return ensureInitialized().decodeJson<VersionTap>(json);
  }
}

mixin VersionTapMappable {
  String toJson() {
    return VersionTapMapper.ensureInitialized()
        .encodeJson<VersionTap>(this as VersionTap);
  }

  Map<String, dynamic> toMap() {
    return VersionTapMapper.ensureInitialized()
        .encodeMap<VersionTap>(this as VersionTap);
  }

  VersionTapCopyWith<VersionTap, VersionTap, VersionTap> get copyWith =>
      _VersionTapCopyWithImpl(this as VersionTap, $identity, $identity);
  @override
  String toString() {
    return VersionTapMapper.ensureInitialized()
        .stringifyValue(this as VersionTap);
  }

  @override
  bool operator ==(Object other) {
    return VersionTapMapper.ensureInitialized()
        .equalsValue(this as VersionTap, other);
  }

  @override
  int get hashCode {
    return VersionTapMapper.ensureInitialized().hashValue(this as VersionTap);
  }
}

extension VersionTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VersionTap, $Out> {
  VersionTapCopyWith<$R, VersionTap, $Out> get $asVersionTap =>
      $base.as((v, t, t2) => _VersionTapCopyWithImpl(v, t, t2));
}

abstract class VersionTapCopyWith<$R, $In extends VersionTap, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? playerId, int? versionId});
  VersionTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VersionTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VersionTap, $Out>
    implements VersionTapCopyWith<$R, VersionTap, $Out> {
  _VersionTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VersionTap> $mapper =
      VersionTapMapper.ensureInitialized();
  @override
  $R call({int? playerId, int? versionId}) => $apply(FieldCopyWithData({
        if (playerId != null) #playerId: playerId,
        if (versionId != null) #versionId: versionId
      }));
  @override
  VersionTap $make(CopyWithData data) => VersionTap(
      playerId: data.get(#playerId, or: $value.playerId),
      versionId: data.get(#versionId, or: $value.versionId));

  @override
  VersionTapCopyWith<$R2, VersionTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VersionTapCopyWithImpl($value, $cast, t);
}

class LoadRolesMapper extends SubClassMapperBase<LoadRoles> {
  LoadRolesMapper._();

  static LoadRolesMapper? _instance;
  static LoadRolesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoadRolesMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'LoadRoles';

  @override
  final MappableFields<LoadRoles> fields = const {};

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'loadRoles';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static LoadRoles _instantiate(DecodingData data) {
    return LoadRoles();
  }

  @override
  final Function instantiate = _instantiate;

  static LoadRoles fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoadRoles>(map);
  }

  static LoadRoles fromJson(String json) {
    return ensureInitialized().decodeJson<LoadRoles>(json);
  }
}

mixin LoadRolesMappable {
  String toJson() {
    return LoadRolesMapper.ensureInitialized()
        .encodeJson<LoadRoles>(this as LoadRoles);
  }

  Map<String, dynamic> toMap() {
    return LoadRolesMapper.ensureInitialized()
        .encodeMap<LoadRoles>(this as LoadRoles);
  }

  LoadRolesCopyWith<LoadRoles, LoadRoles, LoadRoles> get copyWith =>
      _LoadRolesCopyWithImpl(this as LoadRoles, $identity, $identity);
  @override
  String toString() {
    return LoadRolesMapper.ensureInitialized()
        .stringifyValue(this as LoadRoles);
  }

  @override
  bool operator ==(Object other) {
    return LoadRolesMapper.ensureInitialized()
        .equalsValue(this as LoadRoles, other);
  }

  @override
  int get hashCode {
    return LoadRolesMapper.ensureInitialized().hashValue(this as LoadRoles);
  }
}

extension LoadRolesValueCopy<$R, $Out> on ObjectCopyWith<$R, LoadRoles, $Out> {
  LoadRolesCopyWith<$R, LoadRoles, $Out> get $asLoadRoles =>
      $base.as((v, t, t2) => _LoadRolesCopyWithImpl(v, t, t2));
}

abstract class LoadRolesCopyWith<$R, $In extends LoadRoles, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LoadRolesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoadRolesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoadRoles, $Out>
    implements LoadRolesCopyWith<$R, LoadRoles, $Out> {
  _LoadRolesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoadRoles> $mapper =
      LoadRolesMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LoadRoles $make(CopyWithData data) => LoadRoles();

  @override
  LoadRolesCopyWith<$R2, LoadRoles, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoadRolesCopyWithImpl($value, $cast, t);
}

class LoadVersionsMapper extends SubClassMapperBase<LoadVersions> {
  LoadVersionsMapper._();

  static LoadVersionsMapper? _instance;
  static LoadVersionsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoadVersionsMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'LoadVersions';

  @override
  final MappableFields<LoadVersions> fields = const {};

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'loadVersions';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static LoadVersions _instantiate(DecodingData data) {
    return LoadVersions();
  }

  @override
  final Function instantiate = _instantiate;

  static LoadVersions fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoadVersions>(map);
  }

  static LoadVersions fromJson(String json) {
    return ensureInitialized().decodeJson<LoadVersions>(json);
  }
}

mixin LoadVersionsMappable {
  String toJson() {
    return LoadVersionsMapper.ensureInitialized()
        .encodeJson<LoadVersions>(this as LoadVersions);
  }

  Map<String, dynamic> toMap() {
    return LoadVersionsMapper.ensureInitialized()
        .encodeMap<LoadVersions>(this as LoadVersions);
  }

  LoadVersionsCopyWith<LoadVersions, LoadVersions, LoadVersions> get copyWith =>
      _LoadVersionsCopyWithImpl(this as LoadVersions, $identity, $identity);
  @override
  String toString() {
    return LoadVersionsMapper.ensureInitialized()
        .stringifyValue(this as LoadVersions);
  }

  @override
  bool operator ==(Object other) {
    return LoadVersionsMapper.ensureInitialized()
        .equalsValue(this as LoadVersions, other);
  }

  @override
  int get hashCode {
    return LoadVersionsMapper.ensureInitialized()
        .hashValue(this as LoadVersions);
  }
}

extension LoadVersionsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoadVersions, $Out> {
  LoadVersionsCopyWith<$R, LoadVersions, $Out> get $asLoadVersions =>
      $base.as((v, t, t2) => _LoadVersionsCopyWithImpl(v, t, t2));
}

abstract class LoadVersionsCopyWith<$R, $In extends LoadVersions, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LoadVersionsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoadVersionsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoadVersions, $Out>
    implements LoadVersionsCopyWith<$R, LoadVersions, $Out> {
  _LoadVersionsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoadVersions> $mapper =
      LoadVersionsMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LoadVersions $make(CopyWithData data) => LoadVersions();

  @override
  LoadVersionsCopyWith<$R2, LoadVersions, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoadVersionsCopyWithImpl($value, $cast, t);
}

class LoadPriceMapper extends SubClassMapperBase<LoadPrice> {
  LoadPriceMapper._();

  static LoadPriceMapper? _instance;
  static LoadPriceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoadPriceMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'LoadPrice';

  @override
  final MappableFields<LoadPrice> fields = const {};

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'loadPrice';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static LoadPrice _instantiate(DecodingData data) {
    return LoadPrice();
  }

  @override
  final Function instantiate = _instantiate;

  static LoadPrice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoadPrice>(map);
  }

  static LoadPrice fromJson(String json) {
    return ensureInitialized().decodeJson<LoadPrice>(json);
  }
}

mixin LoadPriceMappable {
  String toJson() {
    return LoadPriceMapper.ensureInitialized()
        .encodeJson<LoadPrice>(this as LoadPrice);
  }

  Map<String, dynamic> toMap() {
    return LoadPriceMapper.ensureInitialized()
        .encodeMap<LoadPrice>(this as LoadPrice);
  }

  LoadPriceCopyWith<LoadPrice, LoadPrice, LoadPrice> get copyWith =>
      _LoadPriceCopyWithImpl(this as LoadPrice, $identity, $identity);
  @override
  String toString() {
    return LoadPriceMapper.ensureInitialized()
        .stringifyValue(this as LoadPrice);
  }

  @override
  bool operator ==(Object other) {
    return LoadPriceMapper.ensureInitialized()
        .equalsValue(this as LoadPrice, other);
  }

  @override
  int get hashCode {
    return LoadPriceMapper.ensureInitialized().hashValue(this as LoadPrice);
  }
}

extension LoadPriceValueCopy<$R, $Out> on ObjectCopyWith<$R, LoadPrice, $Out> {
  LoadPriceCopyWith<$R, LoadPrice, $Out> get $asLoadPrice =>
      $base.as((v, t, t2) => _LoadPriceCopyWithImpl(v, t, t2));
}

abstract class LoadPriceCopyWith<$R, $In extends LoadPrice, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LoadPriceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoadPriceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoadPrice, $Out>
    implements LoadPriceCopyWith<$R, LoadPrice, $Out> {
  _LoadPriceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoadPrice> $mapper =
      LoadPriceMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LoadPrice $make(CopyWithData data) => LoadPrice();

  @override
  LoadPriceCopyWith<$R2, LoadPrice, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoadPriceCopyWithImpl($value, $cast, t);
}

class CompareTapMapper extends SubClassMapperBase<CompareTap> {
  CompareTapMapper._();

  static CompareTapMapper? _instance;
  static CompareTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompareTapMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CompareTap';

  @override
  final MappableFields<CompareTap> fields = const {};

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'compareTap';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static CompareTap _instantiate(DecodingData data) {
    return CompareTap();
  }

  @override
  final Function instantiate = _instantiate;

  static CompareTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CompareTap>(map);
  }

  static CompareTap fromJson(String json) {
    return ensureInitialized().decodeJson<CompareTap>(json);
  }
}

mixin CompareTapMappable {
  String toJson() {
    return CompareTapMapper.ensureInitialized()
        .encodeJson<CompareTap>(this as CompareTap);
  }

  Map<String, dynamic> toMap() {
    return CompareTapMapper.ensureInitialized()
        .encodeMap<CompareTap>(this as CompareTap);
  }

  CompareTapCopyWith<CompareTap, CompareTap, CompareTap> get copyWith =>
      _CompareTapCopyWithImpl(this as CompareTap, $identity, $identity);
  @override
  String toString() {
    return CompareTapMapper.ensureInitialized()
        .stringifyValue(this as CompareTap);
  }

  @override
  bool operator ==(Object other) {
    return CompareTapMapper.ensureInitialized()
        .equalsValue(this as CompareTap, other);
  }

  @override
  int get hashCode {
    return CompareTapMapper.ensureInitialized().hashValue(this as CompareTap);
  }
}

extension CompareTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CompareTap, $Out> {
  CompareTapCopyWith<$R, CompareTap, $Out> get $asCompareTap =>
      $base.as((v, t, t2) => _CompareTapCopyWithImpl(v, t, t2));
}

abstract class CompareTapCopyWith<$R, $In extends CompareTap, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  CompareTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CompareTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CompareTap, $Out>
    implements CompareTapCopyWith<$R, CompareTap, $Out> {
  _CompareTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CompareTap> $mapper =
      CompareTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  CompareTap $make(CopyWithData data) => CompareTap();

  @override
  CompareTapCopyWith<$R2, CompareTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CompareTapCopyWithImpl($value, $cast, t);
}

class PlayerDetailStateMapper extends ClassMapperBase<PlayerDetailState> {
  PlayerDetailStateMapper._();

  static PlayerDetailStateMapper? _instance;
  static PlayerDetailStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerDetailStateMapper._());
      PlayerMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
      _t$_R0Mapper.ensureInitialized();
      PlayerPriceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerDetailState';

  static Player _$player(PlayerDetailState v) => v.player;
  static const Field<PlayerDetailState, Player> _f$player =
      Field('player', _$player);
  static List<Role> _$allRoles(PlayerDetailState v) => v.allRoles;
  static const Field<PlayerDetailState, List<Role>> _f$allRoles =
      Field('allRoles', _$allRoles);
  static List<_t$_R0<int, int, String>>? _$playerVersions(
          PlayerDetailState v) =>
      v.playerVersions;
  static const Field<PlayerDetailState, List<_t$_R0<int, int, String>>>
      _f$playerVersions = Field('playerVersions', _$playerVersions, opt: true);
  static int? _$selectedVersion(PlayerDetailState v) => v.selectedVersion;
  static const Field<PlayerDetailState, int> _f$selectedVersion =
      Field('selectedVersion', _$selectedVersion, opt: true);
  static List<Role>? _$playerRoles(PlayerDetailState v) => v.playerRoles;
  static const Field<PlayerDetailState, List<Role>> _f$playerRoles =
      Field('playerRoles', _$playerRoles, opt: true);
  static PlayerPrice? _$playerPrice(PlayerDetailState v) => v.playerPrice;
  static const Field<PlayerDetailState, PlayerPrice> _f$playerPrice =
      Field('playerPrice', _$playerPrice, opt: true);

  @override
  final MappableFields<PlayerDetailState> fields = const {
    #player: _f$player,
    #allRoles: _f$allRoles,
    #playerVersions: _f$playerVersions,
    #selectedVersion: _f$selectedVersion,
    #playerRoles: _f$playerRoles,
    #playerPrice: _f$playerPrice,
  };

  static PlayerDetailState _instantiate(DecodingData data) {
    return PlayerDetailState(
        player: data.dec(_f$player),
        allRoles: data.dec(_f$allRoles),
        playerVersions: data.dec(_f$playerVersions),
        selectedVersion: data.dec(_f$selectedVersion),
        playerRoles: data.dec(_f$playerRoles),
        playerPrice: data.dec(_f$playerPrice));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerDetailState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerDetailState>(map);
  }

  static PlayerDetailState fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerDetailState>(json);
  }
}

mixin PlayerDetailStateMappable {
  String toJson() {
    return PlayerDetailStateMapper.ensureInitialized()
        .encodeJson<PlayerDetailState>(this as PlayerDetailState);
  }

  Map<String, dynamic> toMap() {
    return PlayerDetailStateMapper.ensureInitialized()
        .encodeMap<PlayerDetailState>(this as PlayerDetailState);
  }

  PlayerDetailStateCopyWith<PlayerDetailState, PlayerDetailState,
          PlayerDetailState>
      get copyWith => _PlayerDetailStateCopyWithImpl(
          this as PlayerDetailState, $identity, $identity);
  @override
  String toString() {
    return PlayerDetailStateMapper.ensureInitialized()
        .stringifyValue(this as PlayerDetailState);
  }

  @override
  bool operator ==(Object other) {
    return PlayerDetailStateMapper.ensureInitialized()
        .equalsValue(this as PlayerDetailState, other);
  }

  @override
  int get hashCode {
    return PlayerDetailStateMapper.ensureInitialized()
        .hashValue(this as PlayerDetailState);
  }
}

extension PlayerDetailStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayerDetailState, $Out> {
  PlayerDetailStateCopyWith<$R, PlayerDetailState, $Out>
      get $asPlayerDetailState =>
          $base.as((v, t, t2) => _PlayerDetailStateCopyWithImpl(v, t, t2));
}

abstract class PlayerDetailStateCopyWith<$R, $In extends PlayerDetailState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  PlayerCopyWith<$R, Player, Player> get player;
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>> get allRoles;
  ListCopyWith<
      $R,
      _t$_R0<int, int, String>,
      ObjectCopyWith<$R, _t$_R0<int, int, String>,
          _t$_R0<int, int, String>>>? get playerVersions;
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get playerRoles;
  PlayerPriceCopyWith<$R, PlayerPrice, PlayerPrice>? get playerPrice;
  $R call(
      {Player? player,
      List<Role>? allRoles,
      List<_t$_R0<int, int, String>>? playerVersions,
      int? selectedVersion,
      List<Role>? playerRoles,
      PlayerPrice? playerPrice});
  PlayerDetailStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlayerDetailStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayerDetailState, $Out>
    implements PlayerDetailStateCopyWith<$R, PlayerDetailState, $Out> {
  _PlayerDetailStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayerDetailState> $mapper =
      PlayerDetailStateMapper.ensureInitialized();
  @override
  PlayerCopyWith<$R, Player, Player> get player =>
      $value.player.copyWith.$chain((v) => call(player: v));
  @override
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>> get allRoles =>
      ListCopyWith($value.allRoles, (v, t) => v.copyWith.$chain(t),
          (v) => call(allRoles: v));
  @override
  ListCopyWith<
      $R,
      _t$_R0<int, int, String>,
      ObjectCopyWith<$R, _t$_R0<int, int, String>,
          _t$_R0<int, int, String>>>? get playerVersions =>
      $value.playerVersions != null
          ? ListCopyWith(
              $value.playerVersions!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(playerVersions: v))
          : null;
  @override
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get playerRoles =>
      $value.playerRoles != null
          ? ListCopyWith($value.playerRoles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(playerRoles: v))
          : null;
  @override
  PlayerPriceCopyWith<$R, PlayerPrice, PlayerPrice>? get playerPrice =>
      $value.playerPrice?.copyWith.$chain((v) => call(playerPrice: v));
  @override
  $R call(
          {Player? player,
          List<Role>? allRoles,
          Object? playerVersions = $none,
          Object? selectedVersion = $none,
          Object? playerRoles = $none,
          Object? playerPrice = $none}) =>
      $apply(FieldCopyWithData({
        if (player != null) #player: player,
        if (allRoles != null) #allRoles: allRoles,
        if (playerVersions != $none) #playerVersions: playerVersions,
        if (selectedVersion != $none) #selectedVersion: selectedVersion,
        if (playerRoles != $none) #playerRoles: playerRoles,
        if (playerPrice != $none) #playerPrice: playerPrice
      }));
  @override
  PlayerDetailState $make(CopyWithData data) => PlayerDetailState(
      player: data.get(#player, or: $value.player),
      allRoles: data.get(#allRoles, or: $value.allRoles),
      playerVersions: data.get(#playerVersions, or: $value.playerVersions),
      selectedVersion: data.get(#selectedVersion, or: $value.selectedVersion),
      playerRoles: data.get(#playerRoles, or: $value.playerRoles),
      playerPrice: data.get(#playerPrice, or: $value.playerPrice));

  @override
  PlayerDetailStateCopyWith<$R2, PlayerDetailState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerDetailStateCopyWithImpl($value, $cast, t);
}

typedef _t$_R0<A, B, C> = (A, B, C);

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A, B, C>(f) => f<(A, B, C)>());
    }
    return _instance!;
  }

  static dynamic _$$1(_t$_R0 v) => v.$1;
  static dynamic _arg$$1<A, B, C>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$$1 = Field('\$1', _$$1, arg: _arg$$1);
  static dynamic _$$2(_t$_R0 v) => v.$2;
  static dynamic _arg$$2<A, B, C>(f) => f<B>();
  static const Field<_t$_R0, dynamic> _f$$2 = Field('\$2', _$$2, arg: _arg$$2);
  static dynamic _$$3(_t$_R0 v) => v.$3;
  static dynamic _arg$$3<A, B, C>(f) => f<C>();
  static const Field<_t$_R0, dynamic> _f$$3 = Field('\$3', _$$3, arg: _arg$$3);

  @override
  final MappableFields<_t$_R0> fields = const {
    #$1: _f$$1,
    #$2: _f$$2,
    #$3: _f$$3,
  };

  @override
  Function get typeFactory => <A, B, C>(f) => f<_t$_R0<A, B, C>>();

  static _t$_R0<A, B, C> _instantiate<A, B, C>(DecodingData<_t$_R0> data) {
    return (data.dec(_f$$1), data.dec(_f$$2), data.dec(_f$$3));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A, B, C> fromMap<A, B, C>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A, B, C>>(map);
  }

  static _t$_R0<A, B, C> fromJson<A, B, C>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A, B, C>>(json);
  }
}
