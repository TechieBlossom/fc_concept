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
      ClearChemistryStyleMapper.ensureInitialized();
      LoadRolesMapper.ensureInitialized();
      LoadPlayStylesMapper.ensureInitialized();
      LoadVersionsMapper.ensureInitialized();
      LoadPriceMapper.ensureInitialized();
      LoadAlternativePositionsMapper.ensureInitialized();
      LoadChemistryBoostFaceValuesMapper.ensureInitialized();
      NormalizeChemistryBoostMapper.ensureInitialized();
      CompareTapMapper.ensureInitialized();
      RoleTapMapper.ensureInitialized();
      PlayStyleTapMapper.ensureInitialized();
      AccelerateTapMapper.ensureInitialized();
      ChemistryTapMapper.ensureInitialized();
      ChemistryApplyMapper.ensureInitialized();
      RarityTapMapper.ensureInitialized();
      AllPlayersTapMapper.ensureInitialized();
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

class ClearChemistryStyleMapper
    extends SubClassMapperBase<ClearChemistryStyle> {
  ClearChemistryStyleMapper._();

  static ClearChemistryStyleMapper? _instance;
  static ClearChemistryStyleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClearChemistryStyleMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClearChemistryStyle';

  @override
  final MappableFields<ClearChemistryStyle> fields = const {};

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'clearChemistryStyle';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static ClearChemistryStyle _instantiate(DecodingData data) {
    return ClearChemistryStyle();
  }

  @override
  final Function instantiate = _instantiate;

  static ClearChemistryStyle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClearChemistryStyle>(map);
  }

  static ClearChemistryStyle fromJson(String json) {
    return ensureInitialized().decodeJson<ClearChemistryStyle>(json);
  }
}

mixin ClearChemistryStyleMappable {
  String toJson() {
    return ClearChemistryStyleMapper.ensureInitialized()
        .encodeJson<ClearChemistryStyle>(this as ClearChemistryStyle);
  }

  Map<String, dynamic> toMap() {
    return ClearChemistryStyleMapper.ensureInitialized()
        .encodeMap<ClearChemistryStyle>(this as ClearChemistryStyle);
  }

  ClearChemistryStyleCopyWith<ClearChemistryStyle, ClearChemistryStyle,
          ClearChemistryStyle>
      get copyWith => _ClearChemistryStyleCopyWithImpl(
          this as ClearChemistryStyle, $identity, $identity);
  @override
  String toString() {
    return ClearChemistryStyleMapper.ensureInitialized()
        .stringifyValue(this as ClearChemistryStyle);
  }

  @override
  bool operator ==(Object other) {
    return ClearChemistryStyleMapper.ensureInitialized()
        .equalsValue(this as ClearChemistryStyle, other);
  }

  @override
  int get hashCode {
    return ClearChemistryStyleMapper.ensureInitialized()
        .hashValue(this as ClearChemistryStyle);
  }
}

extension ClearChemistryStyleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClearChemistryStyle, $Out> {
  ClearChemistryStyleCopyWith<$R, ClearChemistryStyle, $Out>
      get $asClearChemistryStyle =>
          $base.as((v, t, t2) => _ClearChemistryStyleCopyWithImpl(v, t, t2));
}

abstract class ClearChemistryStyleCopyWith<$R, $In extends ClearChemistryStyle,
    $Out> implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  ClearChemistryStyleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClearChemistryStyleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClearChemistryStyle, $Out>
    implements ClearChemistryStyleCopyWith<$R, ClearChemistryStyle, $Out> {
  _ClearChemistryStyleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClearChemistryStyle> $mapper =
      ClearChemistryStyleMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  ClearChemistryStyle $make(CopyWithData data) => ClearChemistryStyle();

  @override
  ClearChemistryStyleCopyWith<$R2, ClearChemistryStyle, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClearChemistryStyleCopyWithImpl($value, $cast, t);
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

class LoadChemistryBoostFaceValuesMapper
    extends SubClassMapperBase<LoadChemistryBoostFaceValues> {
  LoadChemistryBoostFaceValuesMapper._();

  static LoadChemistryBoostFaceValuesMapper? _instance;
  static LoadChemistryBoostFaceValuesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = LoadChemistryBoostFaceValuesMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'LoadChemistryBoostFaceValues';

  @override
  final MappableFields<LoadChemistryBoostFaceValues> fields = const {};

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'loadChemistryBoostFaceValues';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static LoadChemistryBoostFaceValues _instantiate(DecodingData data) {
    return LoadChemistryBoostFaceValues();
  }

  @override
  final Function instantiate = _instantiate;

  static LoadChemistryBoostFaceValues fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoadChemistryBoostFaceValues>(map);
  }

  static LoadChemistryBoostFaceValues fromJson(String json) {
    return ensureInitialized().decodeJson<LoadChemistryBoostFaceValues>(json);
  }
}

mixin LoadChemistryBoostFaceValuesMappable {
  String toJson() {
    return LoadChemistryBoostFaceValuesMapper.ensureInitialized()
        .encodeJson<LoadChemistryBoostFaceValues>(
            this as LoadChemistryBoostFaceValues);
  }

  Map<String, dynamic> toMap() {
    return LoadChemistryBoostFaceValuesMapper.ensureInitialized()
        .encodeMap<LoadChemistryBoostFaceValues>(
            this as LoadChemistryBoostFaceValues);
  }

  LoadChemistryBoostFaceValuesCopyWith<LoadChemistryBoostFaceValues,
          LoadChemistryBoostFaceValues, LoadChemistryBoostFaceValues>
      get copyWith => _LoadChemistryBoostFaceValuesCopyWithImpl(
          this as LoadChemistryBoostFaceValues, $identity, $identity);
  @override
  String toString() {
    return LoadChemistryBoostFaceValuesMapper.ensureInitialized()
        .stringifyValue(this as LoadChemistryBoostFaceValues);
  }

  @override
  bool operator ==(Object other) {
    return LoadChemistryBoostFaceValuesMapper.ensureInitialized()
        .equalsValue(this as LoadChemistryBoostFaceValues, other);
  }

  @override
  int get hashCode {
    return LoadChemistryBoostFaceValuesMapper.ensureInitialized()
        .hashValue(this as LoadChemistryBoostFaceValues);
  }
}

extension LoadChemistryBoostFaceValuesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoadChemistryBoostFaceValues, $Out> {
  LoadChemistryBoostFaceValuesCopyWith<$R, LoadChemistryBoostFaceValues, $Out>
      get $asLoadChemistryBoostFaceValues => $base.as(
          (v, t, t2) => _LoadChemistryBoostFaceValuesCopyWithImpl(v, t, t2));
}

abstract class LoadChemistryBoostFaceValuesCopyWith<
    $R,
    $In extends LoadChemistryBoostFaceValues,
    $Out> implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LoadChemistryBoostFaceValuesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LoadChemistryBoostFaceValuesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoadChemistryBoostFaceValues, $Out>
    implements
        LoadChemistryBoostFaceValuesCopyWith<$R, LoadChemistryBoostFaceValues,
            $Out> {
  _LoadChemistryBoostFaceValuesCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoadChemistryBoostFaceValues> $mapper =
      LoadChemistryBoostFaceValuesMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LoadChemistryBoostFaceValues $make(CopyWithData data) =>
      LoadChemistryBoostFaceValues();

  @override
  LoadChemistryBoostFaceValuesCopyWith<$R2, LoadChemistryBoostFaceValues, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _LoadChemistryBoostFaceValuesCopyWithImpl($value, $cast, t);
}

class NormalizeChemistryBoostMapper
    extends SubClassMapperBase<NormalizeChemistryBoost> {
  NormalizeChemistryBoostMapper._();

  static NormalizeChemistryBoostMapper? _instance;
  static NormalizeChemistryBoostMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = NormalizeChemistryBoostMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NormalizeChemistryBoost';

  @override
  final MappableFields<NormalizeChemistryBoost> fields = const {};

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'normalizeChemistryBoost';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static NormalizeChemistryBoost _instantiate(DecodingData data) {
    return NormalizeChemistryBoost();
  }

  @override
  final Function instantiate = _instantiate;

  static NormalizeChemistryBoost fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NormalizeChemistryBoost>(map);
  }

  static NormalizeChemistryBoost fromJson(String json) {
    return ensureInitialized().decodeJson<NormalizeChemistryBoost>(json);
  }
}

mixin NormalizeChemistryBoostMappable {
  String toJson() {
    return NormalizeChemistryBoostMapper.ensureInitialized()
        .encodeJson<NormalizeChemistryBoost>(this as NormalizeChemistryBoost);
  }

  Map<String, dynamic> toMap() {
    return NormalizeChemistryBoostMapper.ensureInitialized()
        .encodeMap<NormalizeChemistryBoost>(this as NormalizeChemistryBoost);
  }

  NormalizeChemistryBoostCopyWith<NormalizeChemistryBoost,
          NormalizeChemistryBoost, NormalizeChemistryBoost>
      get copyWith => _NormalizeChemistryBoostCopyWithImpl(
          this as NormalizeChemistryBoost, $identity, $identity);
  @override
  String toString() {
    return NormalizeChemistryBoostMapper.ensureInitialized()
        .stringifyValue(this as NormalizeChemistryBoost);
  }

  @override
  bool operator ==(Object other) {
    return NormalizeChemistryBoostMapper.ensureInitialized()
        .equalsValue(this as NormalizeChemistryBoost, other);
  }

  @override
  int get hashCode {
    return NormalizeChemistryBoostMapper.ensureInitialized()
        .hashValue(this as NormalizeChemistryBoost);
  }
}

extension NormalizeChemistryBoostValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NormalizeChemistryBoost, $Out> {
  NormalizeChemistryBoostCopyWith<$R, NormalizeChemistryBoost, $Out>
      get $asNormalizeChemistryBoost => $base
          .as((v, t, t2) => _NormalizeChemistryBoostCopyWithImpl(v, t, t2));
}

abstract class NormalizeChemistryBoostCopyWith<
    $R,
    $In extends NormalizeChemistryBoost,
    $Out> implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  NormalizeChemistryBoostCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NormalizeChemistryBoostCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NormalizeChemistryBoost, $Out>
    implements
        NormalizeChemistryBoostCopyWith<$R, NormalizeChemistryBoost, $Out> {
  _NormalizeChemistryBoostCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NormalizeChemistryBoost> $mapper =
      NormalizeChemistryBoostMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  NormalizeChemistryBoost $make(CopyWithData data) => NormalizeChemistryBoost();

  @override
  NormalizeChemistryBoostCopyWith<$R2, NormalizeChemistryBoost, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _NormalizeChemistryBoostCopyWithImpl($value, $cast, t);
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

class RoleTapMapper extends SubClassMapperBase<RoleTap> {
  RoleTapMapper._();

  static RoleTapMapper? _instance;
  static RoleTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoleTapMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RoleTap';

  static Role _$role(RoleTap v) => v.role;
  static const Field<RoleTap, Role> _f$role = Field('role', _$role);

  @override
  final MappableFields<RoleTap> fields = const {
    #role: _f$role,
  };

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'roleTap';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static RoleTap _instantiate(DecodingData data) {
    return RoleTap(role: data.dec(_f$role));
  }

  @override
  final Function instantiate = _instantiate;

  static RoleTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RoleTap>(map);
  }

  static RoleTap fromJson(String json) {
    return ensureInitialized().decodeJson<RoleTap>(json);
  }
}

mixin RoleTapMappable {
  String toJson() {
    return RoleTapMapper.ensureInitialized()
        .encodeJson<RoleTap>(this as RoleTap);
  }

  Map<String, dynamic> toMap() {
    return RoleTapMapper.ensureInitialized()
        .encodeMap<RoleTap>(this as RoleTap);
  }

  RoleTapCopyWith<RoleTap, RoleTap, RoleTap> get copyWith =>
      _RoleTapCopyWithImpl(this as RoleTap, $identity, $identity);
  @override
  String toString() {
    return RoleTapMapper.ensureInitialized().stringifyValue(this as RoleTap);
  }

  @override
  bool operator ==(Object other) {
    return RoleTapMapper.ensureInitialized()
        .equalsValue(this as RoleTap, other);
  }

  @override
  int get hashCode {
    return RoleTapMapper.ensureInitialized().hashValue(this as RoleTap);
  }
}

extension RoleTapValueCopy<$R, $Out> on ObjectCopyWith<$R, RoleTap, $Out> {
  RoleTapCopyWith<$R, RoleTap, $Out> get $asRoleTap =>
      $base.as((v, t, t2) => _RoleTapCopyWithImpl(v, t, t2));
}

abstract class RoleTapCopyWith<$R, $In extends RoleTap, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  RoleCopyWith<$R, Role, Role> get role;
  @override
  $R call({Role? role});
  RoleTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RoleTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RoleTap, $Out>
    implements RoleTapCopyWith<$R, RoleTap, $Out> {
  _RoleTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RoleTap> $mapper =
      RoleTapMapper.ensureInitialized();
  @override
  RoleCopyWith<$R, Role, Role> get role =>
      $value.role.copyWith.$chain((v) => call(role: v));
  @override
  $R call({Role? role}) =>
      $apply(FieldCopyWithData({if (role != null) #role: role}));
  @override
  RoleTap $make(CopyWithData data) =>
      RoleTap(role: data.get(#role, or: $value.role));

  @override
  RoleTapCopyWith<$R2, RoleTap, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RoleTapCopyWithImpl($value, $cast, t);
}

class PlayStyleTapMapper extends SubClassMapperBase<PlayStyleTap> {
  PlayStyleTapMapper._();

  static PlayStyleTapMapper? _instance;
  static PlayStyleTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayStyleTapMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
      PlayStyleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayStyleTap';

  static PlayStyle _$playStyle(PlayStyleTap v) => v.playStyle;
  static const Field<PlayStyleTap, PlayStyle> _f$playStyle =
      Field('playStyle', _$playStyle);

  @override
  final MappableFields<PlayStyleTap> fields = const {
    #playStyle: _f$playStyle,
  };

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'playStyleTap';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static PlayStyleTap _instantiate(DecodingData data) {
    return PlayStyleTap(playStyle: data.dec(_f$playStyle));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayStyleTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayStyleTap>(map);
  }

  static PlayStyleTap fromJson(String json) {
    return ensureInitialized().decodeJson<PlayStyleTap>(json);
  }
}

mixin PlayStyleTapMappable {
  String toJson() {
    return PlayStyleTapMapper.ensureInitialized()
        .encodeJson<PlayStyleTap>(this as PlayStyleTap);
  }

  Map<String, dynamic> toMap() {
    return PlayStyleTapMapper.ensureInitialized()
        .encodeMap<PlayStyleTap>(this as PlayStyleTap);
  }

  PlayStyleTapCopyWith<PlayStyleTap, PlayStyleTap, PlayStyleTap> get copyWith =>
      _PlayStyleTapCopyWithImpl(this as PlayStyleTap, $identity, $identity);
  @override
  String toString() {
    return PlayStyleTapMapper.ensureInitialized()
        .stringifyValue(this as PlayStyleTap);
  }

  @override
  bool operator ==(Object other) {
    return PlayStyleTapMapper.ensureInitialized()
        .equalsValue(this as PlayStyleTap, other);
  }

  @override
  int get hashCode {
    return PlayStyleTapMapper.ensureInitialized()
        .hashValue(this as PlayStyleTap);
  }
}

extension PlayStyleTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayStyleTap, $Out> {
  PlayStyleTapCopyWith<$R, PlayStyleTap, $Out> get $asPlayStyleTap =>
      $base.as((v, t, t2) => _PlayStyleTapCopyWithImpl(v, t, t2));
}

abstract class PlayStyleTapCopyWith<$R, $In extends PlayStyleTap, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  PlayStyleCopyWith<$R, PlayStyle, PlayStyle> get playStyle;
  @override
  $R call({PlayStyle? playStyle});
  PlayStyleTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayStyleTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayStyleTap, $Out>
    implements PlayStyleTapCopyWith<$R, PlayStyleTap, $Out> {
  _PlayStyleTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayStyleTap> $mapper =
      PlayStyleTapMapper.ensureInitialized();
  @override
  PlayStyleCopyWith<$R, PlayStyle, PlayStyle> get playStyle =>
      $value.playStyle.copyWith.$chain((v) => call(playStyle: v));
  @override
  $R call({PlayStyle? playStyle}) =>
      $apply(FieldCopyWithData({if (playStyle != null) #playStyle: playStyle}));
  @override
  PlayStyleTap $make(CopyWithData data) =>
      PlayStyleTap(playStyle: data.get(#playStyle, or: $value.playStyle));

  @override
  PlayStyleTapCopyWith<$R2, PlayStyleTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayStyleTapCopyWithImpl($value, $cast, t);
}

class AccelerateTapMapper extends SubClassMapperBase<AccelerateTap> {
  AccelerateTapMapper._();

  static AccelerateTapMapper? _instance;
  static AccelerateTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AccelerateTapMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
      AccelerateTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AccelerateTap';

  static AccelerateType _$accelerateType(AccelerateTap v) => v.accelerateType;
  static const Field<AccelerateTap, AccelerateType> _f$accelerateType =
      Field('accelerateType', _$accelerateType);

  @override
  final MappableFields<AccelerateTap> fields = const {
    #accelerateType: _f$accelerateType,
  };

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'accelerateTap';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static AccelerateTap _instantiate(DecodingData data) {
    return AccelerateTap(accelerateType: data.dec(_f$accelerateType));
  }

  @override
  final Function instantiate = _instantiate;

  static AccelerateTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AccelerateTap>(map);
  }

  static AccelerateTap fromJson(String json) {
    return ensureInitialized().decodeJson<AccelerateTap>(json);
  }
}

mixin AccelerateTapMappable {
  String toJson() {
    return AccelerateTapMapper.ensureInitialized()
        .encodeJson<AccelerateTap>(this as AccelerateTap);
  }

  Map<String, dynamic> toMap() {
    return AccelerateTapMapper.ensureInitialized()
        .encodeMap<AccelerateTap>(this as AccelerateTap);
  }

  AccelerateTapCopyWith<AccelerateTap, AccelerateTap, AccelerateTap>
      get copyWith => _AccelerateTapCopyWithImpl(
          this as AccelerateTap, $identity, $identity);
  @override
  String toString() {
    return AccelerateTapMapper.ensureInitialized()
        .stringifyValue(this as AccelerateTap);
  }

  @override
  bool operator ==(Object other) {
    return AccelerateTapMapper.ensureInitialized()
        .equalsValue(this as AccelerateTap, other);
  }

  @override
  int get hashCode {
    return AccelerateTapMapper.ensureInitialized()
        .hashValue(this as AccelerateTap);
  }
}

extension AccelerateTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AccelerateTap, $Out> {
  AccelerateTapCopyWith<$R, AccelerateTap, $Out> get $asAccelerateTap =>
      $base.as((v, t, t2) => _AccelerateTapCopyWithImpl(v, t, t2));
}

abstract class AccelerateTapCopyWith<$R, $In extends AccelerateTap, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call({AccelerateType? accelerateType});
  AccelerateTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AccelerateTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AccelerateTap, $Out>
    implements AccelerateTapCopyWith<$R, AccelerateTap, $Out> {
  _AccelerateTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AccelerateTap> $mapper =
      AccelerateTapMapper.ensureInitialized();
  @override
  $R call({AccelerateType? accelerateType}) => $apply(FieldCopyWithData(
      {if (accelerateType != null) #accelerateType: accelerateType}));
  @override
  AccelerateTap $make(CopyWithData data) => AccelerateTap(
      accelerateType: data.get(#accelerateType, or: $value.accelerateType));

  @override
  AccelerateTapCopyWith<$R2, AccelerateTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AccelerateTapCopyWithImpl($value, $cast, t);
}

class ChemistryTapMapper extends SubClassMapperBase<ChemistryTap> {
  ChemistryTapMapper._();

  static ChemistryTapMapper? _instance;
  static ChemistryTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChemistryTapMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ChemistryTap';

  @override
  final MappableFields<ChemistryTap> fields = const {};

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'chemistryTap';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static ChemistryTap _instantiate(DecodingData data) {
    return ChemistryTap();
  }

  @override
  final Function instantiate = _instantiate;

  static ChemistryTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChemistryTap>(map);
  }

  static ChemistryTap fromJson(String json) {
    return ensureInitialized().decodeJson<ChemistryTap>(json);
  }
}

mixin ChemistryTapMappable {
  String toJson() {
    return ChemistryTapMapper.ensureInitialized()
        .encodeJson<ChemistryTap>(this as ChemistryTap);
  }

  Map<String, dynamic> toMap() {
    return ChemistryTapMapper.ensureInitialized()
        .encodeMap<ChemistryTap>(this as ChemistryTap);
  }

  ChemistryTapCopyWith<ChemistryTap, ChemistryTap, ChemistryTap> get copyWith =>
      _ChemistryTapCopyWithImpl(this as ChemistryTap, $identity, $identity);
  @override
  String toString() {
    return ChemistryTapMapper.ensureInitialized()
        .stringifyValue(this as ChemistryTap);
  }

  @override
  bool operator ==(Object other) {
    return ChemistryTapMapper.ensureInitialized()
        .equalsValue(this as ChemistryTap, other);
  }

  @override
  int get hashCode {
    return ChemistryTapMapper.ensureInitialized()
        .hashValue(this as ChemistryTap);
  }
}

extension ChemistryTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChemistryTap, $Out> {
  ChemistryTapCopyWith<$R, ChemistryTap, $Out> get $asChemistryTap =>
      $base.as((v, t, t2) => _ChemistryTapCopyWithImpl(v, t, t2));
}

abstract class ChemistryTapCopyWith<$R, $In extends ChemistryTap, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  ChemistryTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChemistryTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChemistryTap, $Out>
    implements ChemistryTapCopyWith<$R, ChemistryTap, $Out> {
  _ChemistryTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChemistryTap> $mapper =
      ChemistryTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  ChemistryTap $make(CopyWithData data) => ChemistryTap();

  @override
  ChemistryTapCopyWith<$R2, ChemistryTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChemistryTapCopyWithImpl($value, $cast, t);
}

class ChemistryApplyMapper extends SubClassMapperBase<ChemistryApply> {
  ChemistryApplyMapper._();

  static ChemistryApplyMapper? _instance;
  static ChemistryApplyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChemistryApplyMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
      ChemistryStyleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChemistryApply';

  static ChemistryStyle _$chemistryStyle(ChemistryApply v) => v.chemistryStyle;
  static const Field<ChemistryApply, ChemistryStyle> _f$chemistryStyle =
      Field('chemistryStyle', _$chemistryStyle);
  static int _$chemistryModifier(ChemistryApply v) => v.chemistryModifier;
  static const Field<ChemistryApply, int> _f$chemistryModifier =
      Field('chemistryModifier', _$chemistryModifier);

  @override
  final MappableFields<ChemistryApply> fields = const {
    #chemistryStyle: _f$chemistryStyle,
    #chemistryModifier: _f$chemistryModifier,
  };

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'chemistryApply';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static ChemistryApply _instantiate(DecodingData data) {
    return ChemistryApply(
        chemistryStyle: data.dec(_f$chemistryStyle),
        chemistryModifier: data.dec(_f$chemistryModifier));
  }

  @override
  final Function instantiate = _instantiate;

  static ChemistryApply fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChemistryApply>(map);
  }

  static ChemistryApply fromJson(String json) {
    return ensureInitialized().decodeJson<ChemistryApply>(json);
  }
}

mixin ChemistryApplyMappable {
  String toJson() {
    return ChemistryApplyMapper.ensureInitialized()
        .encodeJson<ChemistryApply>(this as ChemistryApply);
  }

  Map<String, dynamic> toMap() {
    return ChemistryApplyMapper.ensureInitialized()
        .encodeMap<ChemistryApply>(this as ChemistryApply);
  }

  ChemistryApplyCopyWith<ChemistryApply, ChemistryApply, ChemistryApply>
      get copyWith => _ChemistryApplyCopyWithImpl(
          this as ChemistryApply, $identity, $identity);
  @override
  String toString() {
    return ChemistryApplyMapper.ensureInitialized()
        .stringifyValue(this as ChemistryApply);
  }

  @override
  bool operator ==(Object other) {
    return ChemistryApplyMapper.ensureInitialized()
        .equalsValue(this as ChemistryApply, other);
  }

  @override
  int get hashCode {
    return ChemistryApplyMapper.ensureInitialized()
        .hashValue(this as ChemistryApply);
  }
}

extension ChemistryApplyValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChemistryApply, $Out> {
  ChemistryApplyCopyWith<$R, ChemistryApply, $Out> get $asChemistryApply =>
      $base.as((v, t, t2) => _ChemistryApplyCopyWithImpl(v, t, t2));
}

abstract class ChemistryApplyCopyWith<$R, $In extends ChemistryApply, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  ChemistryStyleCopyWith<$R, ChemistryStyle, ChemistryStyle> get chemistryStyle;
  @override
  $R call({ChemistryStyle? chemistryStyle, int? chemistryModifier});
  ChemistryApplyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChemistryApplyCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChemistryApply, $Out>
    implements ChemistryApplyCopyWith<$R, ChemistryApply, $Out> {
  _ChemistryApplyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChemistryApply> $mapper =
      ChemistryApplyMapper.ensureInitialized();
  @override
  ChemistryStyleCopyWith<$R, ChemistryStyle, ChemistryStyle>
      get chemistryStyle =>
          $value.chemistryStyle.copyWith.$chain((v) => call(chemistryStyle: v));
  @override
  $R call({ChemistryStyle? chemistryStyle, int? chemistryModifier}) =>
      $apply(FieldCopyWithData({
        if (chemistryStyle != null) #chemistryStyle: chemistryStyle,
        if (chemistryModifier != null) #chemistryModifier: chemistryModifier
      }));
  @override
  ChemistryApply $make(CopyWithData data) => ChemistryApply(
      chemistryStyle: data.get(#chemistryStyle, or: $value.chemistryStyle),
      chemistryModifier:
          data.get(#chemistryModifier, or: $value.chemistryModifier));

  @override
  ChemistryApplyCopyWith<$R2, ChemistryApply, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChemistryApplyCopyWithImpl($value, $cast, t);
}

class RarityTapMapper extends SubClassMapperBase<RarityTap> {
  RarityTapMapper._();

  static RarityTapMapper? _instance;
  static RarityTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RarityTapMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'RarityTap';

  static PlayerCollectionPageParams _$params(RarityTap v) => v.params;
  static const Field<RarityTap, PlayerCollectionPageParams> _f$params =
      Field('params', _$params);

  @override
  final MappableFields<RarityTap> fields = const {
    #params: _f$params,
  };

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'rarityTap';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static RarityTap _instantiate(DecodingData data) {
    return RarityTap(params: data.dec(_f$params));
  }

  @override
  final Function instantiate = _instantiate;

  static RarityTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RarityTap>(map);
  }

  static RarityTap fromJson(String json) {
    return ensureInitialized().decodeJson<RarityTap>(json);
  }
}

mixin RarityTapMappable {
  String toJson() {
    return RarityTapMapper.ensureInitialized()
        .encodeJson<RarityTap>(this as RarityTap);
  }

  Map<String, dynamic> toMap() {
    return RarityTapMapper.ensureInitialized()
        .encodeMap<RarityTap>(this as RarityTap);
  }

  RarityTapCopyWith<RarityTap, RarityTap, RarityTap> get copyWith =>
      _RarityTapCopyWithImpl(this as RarityTap, $identity, $identity);
  @override
  String toString() {
    return RarityTapMapper.ensureInitialized()
        .stringifyValue(this as RarityTap);
  }

  @override
  bool operator ==(Object other) {
    return RarityTapMapper.ensureInitialized()
        .equalsValue(this as RarityTap, other);
  }

  @override
  int get hashCode {
    return RarityTapMapper.ensureInitialized().hashValue(this as RarityTap);
  }
}

extension RarityTapValueCopy<$R, $Out> on ObjectCopyWith<$R, RarityTap, $Out> {
  RarityTapCopyWith<$R, RarityTap, $Out> get $asRarityTap =>
      $base.as((v, t, t2) => _RarityTapCopyWithImpl(v, t, t2));
}

abstract class RarityTapCopyWith<$R, $In extends RarityTap, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call({PlayerCollectionPageParams? params});
  RarityTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RarityTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RarityTap, $Out>
    implements RarityTapCopyWith<$R, RarityTap, $Out> {
  _RarityTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RarityTap> $mapper =
      RarityTapMapper.ensureInitialized();
  @override
  $R call({PlayerCollectionPageParams? params}) =>
      $apply(FieldCopyWithData({if (params != null) #params: params}));
  @override
  RarityTap $make(CopyWithData data) =>
      RarityTap(params: data.get(#params, or: $value.params));

  @override
  RarityTapCopyWith<$R2, RarityTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RarityTapCopyWithImpl($value, $cast, t);
}

class AllPlayersTapMapper extends SubClassMapperBase<AllPlayersTap> {
  AllPlayersTapMapper._();

  static AllPlayersTapMapper? _instance;
  static AllPlayersTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AllPlayersTapMapper._());
      PlayerDetailEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'AllPlayersTap';

  static AllPlayerTapType _$type(AllPlayersTap v) => v.type;
  static const Field<AllPlayersTap, AllPlayerTapType> _f$type =
      Field('type', _$type);

  @override
  final MappableFields<AllPlayersTap> fields = const {
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'playerDetailEvent';
  @override
  final dynamic discriminatorValue = 'allPlayersTap';
  @override
  late final ClassMapperBase superMapper =
      PlayerDetailEventMapper.ensureInitialized();

  static AllPlayersTap _instantiate(DecodingData data) {
    return AllPlayersTap(type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static AllPlayersTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AllPlayersTap>(map);
  }

  static AllPlayersTap fromJson(String json) {
    return ensureInitialized().decodeJson<AllPlayersTap>(json);
  }
}

mixin AllPlayersTapMappable {
  String toJson() {
    return AllPlayersTapMapper.ensureInitialized()
        .encodeJson<AllPlayersTap>(this as AllPlayersTap);
  }

  Map<String, dynamic> toMap() {
    return AllPlayersTapMapper.ensureInitialized()
        .encodeMap<AllPlayersTap>(this as AllPlayersTap);
  }

  AllPlayersTapCopyWith<AllPlayersTap, AllPlayersTap, AllPlayersTap>
      get copyWith => _AllPlayersTapCopyWithImpl(
          this as AllPlayersTap, $identity, $identity);
  @override
  String toString() {
    return AllPlayersTapMapper.ensureInitialized()
        .stringifyValue(this as AllPlayersTap);
  }

  @override
  bool operator ==(Object other) {
    return AllPlayersTapMapper.ensureInitialized()
        .equalsValue(this as AllPlayersTap, other);
  }

  @override
  int get hashCode {
    return AllPlayersTapMapper.ensureInitialized()
        .hashValue(this as AllPlayersTap);
  }
}

extension AllPlayersTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AllPlayersTap, $Out> {
  AllPlayersTapCopyWith<$R, AllPlayersTap, $Out> get $asAllPlayersTap =>
      $base.as((v, t, t2) => _AllPlayersTapCopyWithImpl(v, t, t2));
}

abstract class AllPlayersTapCopyWith<$R, $In extends AllPlayersTap, $Out>
    implements PlayerDetailEventCopyWith<$R, $In, $Out> {
  @override
  $R call({AllPlayerTapType? type});
  AllPlayersTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AllPlayersTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AllPlayersTap, $Out>
    implements AllPlayersTapCopyWith<$R, AllPlayersTap, $Out> {
  _AllPlayersTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AllPlayersTap> $mapper =
      AllPlayersTapMapper.ensureInitialized();
  @override
  $R call({AllPlayerTapType? type}) =>
      $apply(FieldCopyWithData({if (type != null) #type: type}));
  @override
  AllPlayersTap $make(CopyWithData data) =>
      AllPlayersTap(type: data.get(#type, or: $value.type));

  @override
  AllPlayersTapCopyWith<$R2, AllPlayersTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AllPlayersTapCopyWithImpl($value, $cast, t);
}

class PlayerDetailStateMapper extends ClassMapperBase<PlayerDetailState> {
  PlayerDetailStateMapper._();

  static PlayerDetailStateMapper? _instance;
  static PlayerDetailStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerDetailStateMapper._());
      ProcessStateMapper.ensureInitialized();
      PlayerMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
      PlayStyleMapper.ensureInitialized();
      PositionMapper.ensureInitialized();
      PlayerPriceMapper.ensureInitialized();
      ChemistryModifierMapper.ensureInitialized();
      ChemistryStyleMapper.ensureInitialized();
      _t$_R0Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerDetailState';

  static ProcessState? _$priceProcessState(PlayerDetailState v) =>
      v.priceProcessState;
  static const Field<PlayerDetailState, ProcessState> _f$priceProcessState =
      Field('priceProcessState', _$priceProcessState,
          opt: true, def: ProcessState.loading);
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
  static ChemistryModifier? _$normalizedChemistryBoost(PlayerDetailState v) =>
      v.normalizedChemistryBoost;
  static const Field<PlayerDetailState, ChemistryModifier>
      _f$normalizedChemistryBoost =
      Field('normalizedChemistryBoost', _$normalizedChemistryBoost, opt: true);
  static ChemistryStyle? _$selectedChemistryStyle(PlayerDetailState v) =>
      v.selectedChemistryStyle;
  static const Field<PlayerDetailState, ChemistryStyle>
      _f$selectedChemistryStyle =
      Field('selectedChemistryStyle', _$selectedChemistryStyle, opt: true);
  static ChemistryBoostFaceValues? _$chemistryBoostFaceValues(
          PlayerDetailState v) =>
      v.chemistryBoostFaceValues;
  static const Field<PlayerDetailState, ChemistryBoostFaceValues>
      _f$chemistryBoostFaceValues =
      Field('chemistryBoostFaceValues', _$chemistryBoostFaceValues, opt: true);

  @override
  final MappableFields<PlayerDetailState> fields = const {
    #priceProcessState: _f$priceProcessState,
    #player: _f$player,
    #playerVersions: _f$playerVersions,
    #playerRoles: _f$playerRoles,
    #playerPlayStyles: _f$playerPlayStyles,
    #playerPlayStylesPlus: _f$playerPlayStylesPlus,
    #alternativePositions: _f$alternativePositions,
    #playerPrice: _f$playerPrice,
    #selectedChemistryModifier: _f$selectedChemistryModifier,
    #normalizedChemistryBoost: _f$normalizedChemistryBoost,
    #selectedChemistryStyle: _f$selectedChemistryStyle,
    #chemistryBoostFaceValues: _f$chemistryBoostFaceValues,
  };

  static PlayerDetailState _instantiate(DecodingData data) {
    return PlayerDetailState(
        priceProcessState: data.dec(_f$priceProcessState),
        player: data.dec(_f$player),
        playerVersions: data.dec(_f$playerVersions),
        playerRoles: data.dec(_f$playerRoles),
        playerPlayStyles: data.dec(_f$playerPlayStyles),
        playerPlayStylesPlus: data.dec(_f$playerPlayStylesPlus),
        alternativePositions: data.dec(_f$alternativePositions),
        playerPrice: data.dec(_f$playerPrice),
        selectedChemistryModifier: data.dec(_f$selectedChemistryModifier),
        normalizedChemistryBoost: data.dec(_f$normalizedChemistryBoost),
        selectedChemistryStyle: data.dec(_f$selectedChemistryStyle),
        chemistryBoostFaceValues: data.dec(_f$chemistryBoostFaceValues));
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
  ChemistryModifierCopyWith<$R, ChemistryModifier, ChemistryModifier>?
      get normalizedChemistryBoost;
  ChemistryStyleCopyWith<$R, ChemistryStyle, ChemistryStyle>?
      get selectedChemistryStyle;
  $R call(
      {ProcessState? priceProcessState,
      Player? player,
      List<Player>? playerVersions,
      List<Role>? playerRoles,
      List<PlayStyle>? playerPlayStyles,
      List<PlayStyle>? playerPlayStylesPlus,
      List<Position>? alternativePositions,
      PlayerPrice? playerPrice,
      int? selectedChemistryModifier,
      ChemistryModifier? normalizedChemistryBoost,
      ChemistryStyle? selectedChemistryStyle,
      ChemistryBoostFaceValues? chemistryBoostFaceValues});
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
  ChemistryModifierCopyWith<$R, ChemistryModifier, ChemistryModifier>?
      get normalizedChemistryBoost => $value.normalizedChemistryBoost?.copyWith
          .$chain((v) => call(normalizedChemistryBoost: v));
  @override
  ChemistryStyleCopyWith<$R, ChemistryStyle, ChemistryStyle>?
      get selectedChemistryStyle => $value.selectedChemistryStyle?.copyWith
          .$chain((v) => call(selectedChemistryStyle: v));
  @override
  $R call(
          {Object? priceProcessState = $none,
          Player? player,
          Object? playerVersions = $none,
          Object? playerRoles = $none,
          Object? playerPlayStyles = $none,
          Object? playerPlayStylesPlus = $none,
          Object? alternativePositions = $none,
          Object? playerPrice = $none,
          Object? selectedChemistryModifier = $none,
          Object? normalizedChemistryBoost = $none,
          Object? selectedChemistryStyle = $none,
          Object? chemistryBoostFaceValues = $none}) =>
      $apply(FieldCopyWithData({
        if (priceProcessState != $none) #priceProcessState: priceProcessState,
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
        if (normalizedChemistryBoost != $none)
          #normalizedChemistryBoost: normalizedChemistryBoost,
        if (selectedChemistryStyle != $none)
          #selectedChemistryStyle: selectedChemistryStyle,
        if (chemistryBoostFaceValues != $none)
          #chemistryBoostFaceValues: chemistryBoostFaceValues
      }));
  @override
  PlayerDetailState $make(CopyWithData data) => PlayerDetailState(
      priceProcessState:
          data.get(#priceProcessState, or: $value.priceProcessState),
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
      normalizedChemistryBoost: data.get(#normalizedChemistryBoost,
          or: $value.normalizedChemistryBoost),
      selectedChemistryStyle:
          data.get(#selectedChemistryStyle, or: $value.selectedChemistryStyle),
      chemistryBoostFaceValues: data.get(#chemistryBoostFaceValues,
          or: $value.chemistryBoostFaceValues));

  @override
  PlayerDetailStateCopyWith<$R2, PlayerDetailState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerDetailStateCopyWithImpl($value, $cast, t);
}

typedef _t$_R0<A, B, C, D, E, F> = ({
  A defending,
  B dribbling,
  C pace,
  D passing,
  E physical,
  F shooting
});

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A, B, C, D, E, F>(f) => f<
          ({
            A defending,
            B dribbling,
            C pace,
            D passing,
            E physical,
            F shooting
          })>());
    }
    return _instance!;
  }

  static dynamic _$defending(_t$_R0 v) => v.defending;
  static dynamic _arg$defending<A, B, C, D, E, F>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$defending =
      Field('defending', _$defending, arg: _arg$defending);
  static dynamic _$dribbling(_t$_R0 v) => v.dribbling;
  static dynamic _arg$dribbling<A, B, C, D, E, F>(f) => f<B>();
  static const Field<_t$_R0, dynamic> _f$dribbling =
      Field('dribbling', _$dribbling, arg: _arg$dribbling);
  static dynamic _$pace(_t$_R0 v) => v.pace;
  static dynamic _arg$pace<A, B, C, D, E, F>(f) => f<C>();
  static const Field<_t$_R0, dynamic> _f$pace =
      Field('pace', _$pace, arg: _arg$pace);
  static dynamic _$passing(_t$_R0 v) => v.passing;
  static dynamic _arg$passing<A, B, C, D, E, F>(f) => f<D>();
  static const Field<_t$_R0, dynamic> _f$passing =
      Field('passing', _$passing, arg: _arg$passing);
  static dynamic _$physical(_t$_R0 v) => v.physical;
  static dynamic _arg$physical<A, B, C, D, E, F>(f) => f<E>();
  static const Field<_t$_R0, dynamic> _f$physical =
      Field('physical', _$physical, arg: _arg$physical);
  static dynamic _$shooting(_t$_R0 v) => v.shooting;
  static dynamic _arg$shooting<A, B, C, D, E, F>(f) => f<F>();
  static const Field<_t$_R0, dynamic> _f$shooting =
      Field('shooting', _$shooting, arg: _arg$shooting);

  @override
  final MappableFields<_t$_R0> fields = const {
    #defending: _f$defending,
    #dribbling: _f$dribbling,
    #pace: _f$pace,
    #passing: _f$passing,
    #physical: _f$physical,
    #shooting: _f$shooting,
  };

  @override
  Function get typeFactory =>
      <A, B, C, D, E, F>(f) => f<_t$_R0<A, B, C, D, E, F>>();

  static _t$_R0<A, B, C, D, E, F> _instantiate<A, B, C, D, E, F>(
      DecodingData<_t$_R0> data) {
    return (
      defending: data.dec(_f$defending),
      dribbling: data.dec(_f$dribbling),
      pace: data.dec(_f$pace),
      passing: data.dec(_f$passing),
      physical: data.dec(_f$physical),
      shooting: data.dec(_f$shooting)
    );
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A, B, C, D, E, F> fromMap<A, B, C, D, E, F>(
      Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A, B, C, D, E, F>>(map);
  }

  static _t$_R0<A, B, C, D, E, F> fromJson<A, B, C, D, E, F>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A, B, C, D, E, F>>(json);
  }
}
