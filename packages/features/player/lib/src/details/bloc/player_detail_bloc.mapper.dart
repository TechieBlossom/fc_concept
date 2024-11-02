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
      UpdateChemistryStyleMapper.ensureInitialized();
      LoadRolesMapper.ensureInitialized();
      LoadPlayStylesMapper.ensureInitialized();
      LoadVersionsMapper.ensureInitialized();
      LoadPriceMapper.ensureInitialized();
      LoadAlternativePositionsMapper.ensureInitialized();
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

  @override
  final MappableFields<VersionTap> fields = const {
    #playerId: _f$playerId,
  };

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'versionTap';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static VersionTap _instantiate(DecodingData data) {
    return VersionTap(playerId: data.dec(_f$playerId));
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
  $R call({int? playerId});
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
  $R call({int? playerId}) =>
      $apply(FieldCopyWithData({if (playerId != null) #playerId: playerId}));
  @override
  VersionTap $make(CopyWithData data) =>
      VersionTap(playerId: data.get(#playerId, or: $value.playerId));

  @override
  VersionTapCopyWith<$R2, VersionTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VersionTapCopyWithImpl($value, $cast, t);
}

class UpdateChemistryStyleMapper
    extends SubClassMapperBase<UpdateChemistryStyle> {
  UpdateChemistryStyleMapper._();

  static UpdateChemistryStyleMapper? _instance;
  static UpdateChemistryStyleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdateChemistryStyleMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
      ChemistryStyleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UpdateChemistryStyle';

  static int? _$chemistryModifier(UpdateChemistryStyle v) =>
      v.chemistryModifier;
  static const Field<UpdateChemistryStyle, int> _f$chemistryModifier =
      Field('chemistryModifier', _$chemistryModifier);
  static ChemistryStyle? _$chemistryStyle(UpdateChemistryStyle v) =>
      v.chemistryStyle;
  static const Field<UpdateChemistryStyle, ChemistryStyle> _f$chemistryStyle =
      Field('chemistryStyle', _$chemistryStyle);

  @override
  final MappableFields<UpdateChemistryStyle> fields = const {
    #chemistryModifier: _f$chemistryModifier,
    #chemistryStyle: _f$chemistryStyle,
  };

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'updateChemistryStyle';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static UpdateChemistryStyle _instantiate(DecodingData data) {
    return UpdateChemistryStyle(
        chemistryModifier: data.dec(_f$chemistryModifier),
        chemistryStyle: data.dec(_f$chemistryStyle));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdateChemistryStyle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdateChemistryStyle>(map);
  }

  static UpdateChemistryStyle fromJson(String json) {
    return ensureInitialized().decodeJson<UpdateChemistryStyle>(json);
  }
}

mixin UpdateChemistryStyleMappable {
  String toJson() {
    return UpdateChemistryStyleMapper.ensureInitialized()
        .encodeJson<UpdateChemistryStyle>(this as UpdateChemistryStyle);
  }

  Map<String, dynamic> toMap() {
    return UpdateChemistryStyleMapper.ensureInitialized()
        .encodeMap<UpdateChemistryStyle>(this as UpdateChemistryStyle);
  }

  UpdateChemistryStyleCopyWith<UpdateChemistryStyle, UpdateChemistryStyle,
          UpdateChemistryStyle>
      get copyWith => _UpdateChemistryStyleCopyWithImpl(
          this as UpdateChemistryStyle, $identity, $identity);
  @override
  String toString() {
    return UpdateChemistryStyleMapper.ensureInitialized()
        .stringifyValue(this as UpdateChemistryStyle);
  }

  @override
  bool operator ==(Object other) {
    return UpdateChemistryStyleMapper.ensureInitialized()
        .equalsValue(this as UpdateChemistryStyle, other);
  }

  @override
  int get hashCode {
    return UpdateChemistryStyleMapper.ensureInitialized()
        .hashValue(this as UpdateChemistryStyle);
  }
}

extension UpdateChemistryStyleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdateChemistryStyle, $Out> {
  UpdateChemistryStyleCopyWith<$R, UpdateChemistryStyle, $Out>
      get $asUpdateChemistryStyle =>
          $base.as((v, t, t2) => _UpdateChemistryStyleCopyWithImpl(v, t, t2));
}

abstract class UpdateChemistryStyleCopyWith<
    $R,
    $In extends UpdateChemistryStyle,
    $Out> implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  ChemistryStyleCopyWith<$R, ChemistryStyle, ChemistryStyle>?
      get chemistryStyle;
  @override
  $R call({int? chemistryModifier, ChemistryStyle? chemistryStyle});
  UpdateChemistryStyleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdateChemistryStyleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdateChemistryStyle, $Out>
    implements UpdateChemistryStyleCopyWith<$R, UpdateChemistryStyle, $Out> {
  _UpdateChemistryStyleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdateChemistryStyle> $mapper =
      UpdateChemistryStyleMapper.ensureInitialized();
  @override
  ChemistryStyleCopyWith<$R, ChemistryStyle, ChemistryStyle>?
      get chemistryStyle => $value.chemistryStyle?.copyWith
          .$chain((v) => call(chemistryStyle: v));
  @override
  $R call(
          {Object? chemistryModifier = $none,
          Object? chemistryStyle = $none}) =>
      $apply(FieldCopyWithData({
        if (chemistryModifier != $none) #chemistryModifier: chemistryModifier,
        if (chemistryStyle != $none) #chemistryStyle: chemistryStyle
      }));
  @override
  UpdateChemistryStyle $make(CopyWithData data) => UpdateChemistryStyle(
      chemistryModifier:
          data.get(#chemistryModifier, or: $value.chemistryModifier),
      chemistryStyle: data.get(#chemistryStyle, or: $value.chemistryStyle));

  @override
  UpdateChemistryStyleCopyWith<$R2, UpdateChemistryStyle, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _UpdateChemistryStyleCopyWithImpl($value, $cast, t);
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

class LoadPlayStylesMapper extends SubClassMapperBase<LoadPlayStyles> {
  LoadPlayStylesMapper._();

  static LoadPlayStylesMapper? _instance;
  static LoadPlayStylesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoadPlayStylesMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'LoadPlayStyles';

  @override
  final MappableFields<LoadPlayStyles> fields = const {};

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'loadPlayStyles';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static LoadPlayStyles _instantiate(DecodingData data) {
    return LoadPlayStyles();
  }

  @override
  final Function instantiate = _instantiate;

  static LoadPlayStyles fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoadPlayStyles>(map);
  }

  static LoadPlayStyles fromJson(String json) {
    return ensureInitialized().decodeJson<LoadPlayStyles>(json);
  }
}

mixin LoadPlayStylesMappable {
  String toJson() {
    return LoadPlayStylesMapper.ensureInitialized()
        .encodeJson<LoadPlayStyles>(this as LoadPlayStyles);
  }

  Map<String, dynamic> toMap() {
    return LoadPlayStylesMapper.ensureInitialized()
        .encodeMap<LoadPlayStyles>(this as LoadPlayStyles);
  }

  LoadPlayStylesCopyWith<LoadPlayStyles, LoadPlayStyles, LoadPlayStyles>
      get copyWith => _LoadPlayStylesCopyWithImpl(
          this as LoadPlayStyles, $identity, $identity);
  @override
  String toString() {
    return LoadPlayStylesMapper.ensureInitialized()
        .stringifyValue(this as LoadPlayStyles);
  }

  @override
  bool operator ==(Object other) {
    return LoadPlayStylesMapper.ensureInitialized()
        .equalsValue(this as LoadPlayStyles, other);
  }

  @override
  int get hashCode {
    return LoadPlayStylesMapper.ensureInitialized()
        .hashValue(this as LoadPlayStyles);
  }
}

extension LoadPlayStylesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoadPlayStyles, $Out> {
  LoadPlayStylesCopyWith<$R, LoadPlayStyles, $Out> get $asLoadPlayStyles =>
      $base.as((v, t, t2) => _LoadPlayStylesCopyWithImpl(v, t, t2));
}

abstract class LoadPlayStylesCopyWith<$R, $In extends LoadPlayStyles, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LoadPlayStylesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LoadPlayStylesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoadPlayStyles, $Out>
    implements LoadPlayStylesCopyWith<$R, LoadPlayStyles, $Out> {
  _LoadPlayStylesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoadPlayStyles> $mapper =
      LoadPlayStylesMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LoadPlayStyles $make(CopyWithData data) => LoadPlayStyles();

  @override
  LoadPlayStylesCopyWith<$R2, LoadPlayStyles, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoadPlayStylesCopyWithImpl($value, $cast, t);
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

class LoadAlternativePositionsMapper
    extends SubClassMapperBase<LoadAlternativePositions> {
  LoadAlternativePositionsMapper._();

  static LoadAlternativePositionsMapper? _instance;
  static LoadAlternativePositionsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = LoadAlternativePositionsMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'LoadAlternativePositions';

  @override
  final MappableFields<LoadAlternativePositions> fields = const {};

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'loadAlternativePositions';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static LoadAlternativePositions _instantiate(DecodingData data) {
    return LoadAlternativePositions();
  }

  @override
  final Function instantiate = _instantiate;

  static LoadAlternativePositions fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoadAlternativePositions>(map);
  }

  static LoadAlternativePositions fromJson(String json) {
    return ensureInitialized().decodeJson<LoadAlternativePositions>(json);
  }
}

mixin LoadAlternativePositionsMappable {
  String toJson() {
    return LoadAlternativePositionsMapper.ensureInitialized()
        .encodeJson<LoadAlternativePositions>(this as LoadAlternativePositions);
  }

  Map<String, dynamic> toMap() {
    return LoadAlternativePositionsMapper.ensureInitialized()
        .encodeMap<LoadAlternativePositions>(this as LoadAlternativePositions);
  }

  LoadAlternativePositionsCopyWith<LoadAlternativePositions,
          LoadAlternativePositions, LoadAlternativePositions>
      get copyWith => _LoadAlternativePositionsCopyWithImpl(
          this as LoadAlternativePositions, $identity, $identity);
  @override
  String toString() {
    return LoadAlternativePositionsMapper.ensureInitialized()
        .stringifyValue(this as LoadAlternativePositions);
  }

  @override
  bool operator ==(Object other) {
    return LoadAlternativePositionsMapper.ensureInitialized()
        .equalsValue(this as LoadAlternativePositions, other);
  }

  @override
  int get hashCode {
    return LoadAlternativePositionsMapper.ensureInitialized()
        .hashValue(this as LoadAlternativePositions);
  }
}

extension LoadAlternativePositionsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoadAlternativePositions, $Out> {
  LoadAlternativePositionsCopyWith<$R, LoadAlternativePositions, $Out>
      get $asLoadAlternativePositions => $base
          .as((v, t, t2) => _LoadAlternativePositionsCopyWithImpl(v, t, t2));
}

abstract class LoadAlternativePositionsCopyWith<
    $R,
    $In extends LoadAlternativePositions,
    $Out> implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LoadAlternativePositionsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LoadAlternativePositionsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoadAlternativePositions, $Out>
    implements
        LoadAlternativePositionsCopyWith<$R, LoadAlternativePositions, $Out> {
  _LoadAlternativePositionsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoadAlternativePositions> $mapper =
      LoadAlternativePositionsMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LoadAlternativePositions $make(CopyWithData data) =>
      LoadAlternativePositions();

  @override
  LoadAlternativePositionsCopyWith<$R2, LoadAlternativePositions, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _LoadAlternativePositionsCopyWithImpl($value, $cast, t);
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
      PlayStyleMapper.ensureInitialized();
      PositionMapper.ensureInitialized();
      PlayerPriceMapper.ensureInitialized();
      ChemistryStyleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerDetailState';

  static Player _$player(PlayerDetailState v) => v.player;
  static const Field<PlayerDetailState, Player> _f$player =
      Field('player', _$player);
  static List<Player>? _$playerVersions(PlayerDetailState v) =>
      v.playerVersions;
  static const Field<PlayerDetailState, List<Player>> _f$playerVersions =
      Field('playerVersions', _$playerVersions, opt: true);
  static List<Role>? _$playerRoles(PlayerDetailState v) => v.playerRoles;
  static const Field<PlayerDetailState, List<Role>> _f$playerRoles =
      Field('playerRoles', _$playerRoles, opt: true);
  static List<PlayStyle>? _$playerPlayStyles(PlayerDetailState v) =>
      v.playerPlayStyles;
  static const Field<PlayerDetailState, List<PlayStyle>> _f$playerPlayStyles =
      Field('playerPlayStyles', _$playerPlayStyles, opt: true);
  static List<PlayStyle>? _$playerPlayStylesPlus(PlayerDetailState v) =>
      v.playerPlayStylesPlus;
  static const Field<PlayerDetailState, List<PlayStyle>>
      _f$playerPlayStylesPlus =
      Field('playerPlayStylesPlus', _$playerPlayStylesPlus, opt: true);
  static List<Position>? _$alternativePositions(PlayerDetailState v) =>
      v.alternativePositions;
  static const Field<PlayerDetailState, List<Position>>
      _f$alternativePositions =
      Field('alternativePositions', _$alternativePositions, opt: true);
  static PlayerPrice? _$playerPrice(PlayerDetailState v) => v.playerPrice;
  static const Field<PlayerDetailState, PlayerPrice> _f$playerPrice =
      Field('playerPrice', _$playerPrice, opt: true);
  static int? _$selectedChemistryModifier(PlayerDetailState v) =>
      v.selectedChemistryModifier;
  static const Field<PlayerDetailState, int> _f$selectedChemistryModifier =
      Field('selectedChemistryModifier', _$selectedChemistryModifier,
          opt: true);
  static ChemistryStyle? _$selectedChemistryStyle(PlayerDetailState v) =>
      v.selectedChemistryStyle;
  static const Field<PlayerDetailState, ChemistryStyle>
      _f$selectedChemistryStyle =
      Field('selectedChemistryStyle', _$selectedChemistryStyle, opt: true);

  @override
  final MappableFields<PlayerDetailState> fields = const {
    #player: _f$player,
    #playerVersions: _f$playerVersions,
    #playerRoles: _f$playerRoles,
    #playerPlayStyles: _f$playerPlayStyles,
    #playerPlayStylesPlus: _f$playerPlayStylesPlus,
    #alternativePositions: _f$alternativePositions,
    #playerPrice: _f$playerPrice,
    #selectedChemistryModifier: _f$selectedChemistryModifier,
    #selectedChemistryStyle: _f$selectedChemistryStyle,
  };

  static PlayerDetailState _instantiate(DecodingData data) {
    return PlayerDetailState(
        player: data.dec(_f$player),
        playerVersions: data.dec(_f$playerVersions),
        playerRoles: data.dec(_f$playerRoles),
        playerPlayStyles: data.dec(_f$playerPlayStyles),
        playerPlayStylesPlus: data.dec(_f$playerPlayStylesPlus),
        alternativePositions: data.dec(_f$alternativePositions),
        playerPrice: data.dec(_f$playerPrice),
        selectedChemistryModifier: data.dec(_f$selectedChemistryModifier),
        selectedChemistryStyle: data.dec(_f$selectedChemistryStyle));
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
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>?
      get playerVersions;
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get playerRoles;
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>?
      get playerPlayStyles;
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>?
      get playerPlayStylesPlus;
  ListCopyWith<$R, Position, PositionCopyWith<$R, Position, Position>>?
      get alternativePositions;
  PlayerPriceCopyWith<$R, PlayerPrice, PlayerPrice>? get playerPrice;
  ChemistryStyleCopyWith<$R, ChemistryStyle, ChemistryStyle>?
      get selectedChemistryStyle;
  $R call(
      {Player? player,
      List<Player>? playerVersions,
      List<Role>? playerRoles,
      List<PlayStyle>? playerPlayStyles,
      List<PlayStyle>? playerPlayStylesPlus,
      List<Position>? alternativePositions,
      PlayerPrice? playerPrice,
      int? selectedChemistryModifier,
      ChemistryStyle? selectedChemistryStyle});
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
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>?
      get playerVersions => $value.playerVersions != null
          ? ListCopyWith($value.playerVersions!, (v, t) => v.copyWith.$chain(t),
              (v) => call(playerVersions: v))
          : null;
  @override
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get playerRoles =>
      $value.playerRoles != null
          ? ListCopyWith($value.playerRoles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(playerRoles: v))
          : null;
  @override
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>?
      get playerPlayStyles => $value.playerPlayStyles != null
          ? ListCopyWith($value.playerPlayStyles!,
              (v, t) => v.copyWith.$chain(t), (v) => call(playerPlayStyles: v))
          : null;
  @override
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>?
      get playerPlayStylesPlus => $value.playerPlayStylesPlus != null
          ? ListCopyWith(
              $value.playerPlayStylesPlus!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(playerPlayStylesPlus: v))
          : null;
  @override
  ListCopyWith<$R, Position, PositionCopyWith<$R, Position, Position>>?
      get alternativePositions => $value.alternativePositions != null
          ? ListCopyWith(
              $value.alternativePositions!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(alternativePositions: v))
          : null;
  @override
  PlayerPriceCopyWith<$R, PlayerPrice, PlayerPrice>? get playerPrice =>
      $value.playerPrice?.copyWith.$chain((v) => call(playerPrice: v));
  @override
  ChemistryStyleCopyWith<$R, ChemistryStyle, ChemistryStyle>?
      get selectedChemistryStyle => $value.selectedChemistryStyle?.copyWith
          .$chain((v) => call(selectedChemistryStyle: v));
  @override
  $R call(
          {Player? player,
          Object? playerVersions = $none,
          Object? playerRoles = $none,
          Object? playerPlayStyles = $none,
          Object? playerPlayStylesPlus = $none,
          Object? alternativePositions = $none,
          Object? playerPrice = $none,
          Object? selectedChemistryModifier = $none,
          Object? selectedChemistryStyle = $none}) =>
      $apply(FieldCopyWithData({
        if (player != null) #player: player,
        if (playerVersions != $none) #playerVersions: playerVersions,
        if (playerRoles != $none) #playerRoles: playerRoles,
        if (playerPlayStyles != $none) #playerPlayStyles: playerPlayStyles,
        if (playerPlayStylesPlus != $none)
          #playerPlayStylesPlus: playerPlayStylesPlus,
        if (alternativePositions != $none)
          #alternativePositions: alternativePositions,
        if (playerPrice != $none) #playerPrice: playerPrice,
        if (selectedChemistryModifier != $none)
          #selectedChemistryModifier: selectedChemistryModifier,
        if (selectedChemistryStyle != $none)
          #selectedChemistryStyle: selectedChemistryStyle
      }));
  @override
  PlayerDetailState $make(CopyWithData data) => PlayerDetailState(
      player: data.get(#player, or: $value.player),
      playerVersions: data.get(#playerVersions, or: $value.playerVersions),
      playerRoles: data.get(#playerRoles, or: $value.playerRoles),
      playerPlayStyles:
          data.get(#playerPlayStyles, or: $value.playerPlayStyles),
      playerPlayStylesPlus:
          data.get(#playerPlayStylesPlus, or: $value.playerPlayStylesPlus),
      alternativePositions:
          data.get(#alternativePositions, or: $value.alternativePositions),
      playerPrice: data.get(#playerPrice, or: $value.playerPrice),
      selectedChemistryModifier: data.get(#selectedChemistryModifier,
          or: $value.selectedChemistryModifier),
      selectedChemistryStyle:
          data.get(#selectedChemistryStyle, or: $value.selectedChemistryStyle));

  @override
  PlayerDetailStateCopyWith<$R2, PlayerDetailState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerDetailStateCopyWithImpl($value, $cast, t);
}
