// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'role_nested_filter_bloc.dart';

class RoleNestedFilterEventMapper
    extends ClassMapperBase<RoleNestedFilterEvent> {
  RoleNestedFilterEventMapper._();

  static RoleNestedFilterEventMapper? _instance;
  static RoleNestedFilterEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoleNestedFilterEventMapper._());
      InitMapper.ensureInitialized();
      SelectRoleMapper.ensureInitialized();
      DoneMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RoleNestedFilterEvent';

  @override
  final MappableFields<RoleNestedFilterEvent> fields = const {};

  static RoleNestedFilterEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'RoleNestedFilterEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static RoleNestedFilterEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RoleNestedFilterEvent>(map);
  }

  static RoleNestedFilterEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RoleNestedFilterEvent>(json);
  }
}

mixin RoleNestedFilterEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RoleNestedFilterEventCopyWith<RoleNestedFilterEvent, RoleNestedFilterEvent,
      RoleNestedFilterEvent> get copyWith;
}

abstract class RoleNestedFilterEventCopyWith<
    $R,
    $In extends RoleNestedFilterEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  RoleNestedFilterEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      RoleNestedFilterEventMapper.ensureInitialized().addSubMapper(_instance!);
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
      RoleNestedFilterEventMapper.ensureInitialized();

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
    implements RoleNestedFilterEventCopyWith<$R, $In, $Out> {
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

class SelectRoleMapper extends SubClassMapperBase<SelectRole> {
  SelectRoleMapper._();

  static SelectRoleMapper? _instance;
  static SelectRoleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectRoleMapper._());
      RoleNestedFilterEventMapper.ensureInitialized().addSubMapper(_instance!);
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SelectRole';

  static Role _$item(SelectRole v) => v.item;
  static const Field<SelectRole, Role> _f$item = Field('item', _$item);

  @override
  final MappableFields<SelectRole> fields = const {
    #item: _f$item,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'selectRole';
  @override
  late final ClassMapperBase superMapper =
      RoleNestedFilterEventMapper.ensureInitialized();

  static SelectRole _instantiate(DecodingData data) {
    return SelectRole(item: data.dec(_f$item));
  }

  @override
  final Function instantiate = _instantiate;

  static SelectRole fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SelectRole>(map);
  }

  static SelectRole fromJson(String json) {
    return ensureInitialized().decodeJson<SelectRole>(json);
  }
}

mixin SelectRoleMappable {
  String toJson() {
    return SelectRoleMapper.ensureInitialized()
        .encodeJson<SelectRole>(this as SelectRole);
  }

  Map<String, dynamic> toMap() {
    return SelectRoleMapper.ensureInitialized()
        .encodeMap<SelectRole>(this as SelectRole);
  }

  SelectRoleCopyWith<SelectRole, SelectRole, SelectRole> get copyWith =>
      _SelectRoleCopyWithImpl(this as SelectRole, $identity, $identity);
  @override
  String toString() {
    return SelectRoleMapper.ensureInitialized()
        .stringifyValue(this as SelectRole);
  }

  @override
  bool operator ==(Object other) {
    return SelectRoleMapper.ensureInitialized()
        .equalsValue(this as SelectRole, other);
  }

  @override
  int get hashCode {
    return SelectRoleMapper.ensureInitialized().hashValue(this as SelectRole);
  }
}

extension SelectRoleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SelectRole, $Out> {
  SelectRoleCopyWith<$R, SelectRole, $Out> get $asSelectRole =>
      $base.as((v, t, t2) => _SelectRoleCopyWithImpl(v, t, t2));
}

abstract class SelectRoleCopyWith<$R, $In extends SelectRole, $Out>
    implements RoleNestedFilterEventCopyWith<$R, $In, $Out> {
  RoleCopyWith<$R, Role, Role> get item;
  @override
  $R call({Role? item});
  SelectRoleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SelectRoleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SelectRole, $Out>
    implements SelectRoleCopyWith<$R, SelectRole, $Out> {
  _SelectRoleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SelectRole> $mapper =
      SelectRoleMapper.ensureInitialized();
  @override
  RoleCopyWith<$R, Role, Role> get item =>
      $value.item.copyWith.$chain((v) => call(item: v));
  @override
  $R call({Role? item}) =>
      $apply(FieldCopyWithData({if (item != null) #item: item}));
  @override
  SelectRole $make(CopyWithData data) =>
      SelectRole(item: data.get(#item, or: $value.item));

  @override
  SelectRoleCopyWith<$R2, SelectRole, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SelectRoleCopyWithImpl($value, $cast, t);
}

class DoneMapper extends SubClassMapperBase<Done> {
  DoneMapper._();

  static DoneMapper? _instance;
  static DoneMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DoneMapper._());
      RoleNestedFilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Done';

  @override
  final MappableFields<Done> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'done';
  @override
  late final ClassMapperBase superMapper =
      RoleNestedFilterEventMapper.ensureInitialized();

  static Done _instantiate(DecodingData data) {
    return Done();
  }

  @override
  final Function instantiate = _instantiate;

  static Done fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Done>(map);
  }

  static Done fromJson(String json) {
    return ensureInitialized().decodeJson<Done>(json);
  }
}

mixin DoneMappable {
  String toJson() {
    return DoneMapper.ensureInitialized().encodeJson<Done>(this as Done);
  }

  Map<String, dynamic> toMap() {
    return DoneMapper.ensureInitialized().encodeMap<Done>(this as Done);
  }

  DoneCopyWith<Done, Done, Done> get copyWith =>
      _DoneCopyWithImpl(this as Done, $identity, $identity);
  @override
  String toString() {
    return DoneMapper.ensureInitialized().stringifyValue(this as Done);
  }

  @override
  bool operator ==(Object other) {
    return DoneMapper.ensureInitialized().equalsValue(this as Done, other);
  }

  @override
  int get hashCode {
    return DoneMapper.ensureInitialized().hashValue(this as Done);
  }
}

extension DoneValueCopy<$R, $Out> on ObjectCopyWith<$R, Done, $Out> {
  DoneCopyWith<$R, Done, $Out> get $asDone =>
      $base.as((v, t, t2) => _DoneCopyWithImpl(v, t, t2));
}

abstract class DoneCopyWith<$R, $In extends Done, $Out>
    implements RoleNestedFilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  DoneCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DoneCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Done, $Out>
    implements DoneCopyWith<$R, Done, $Out> {
  _DoneCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Done> $mapper = DoneMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Done $make(CopyWithData data) => Done();

  @override
  DoneCopyWith<$R2, Done, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DoneCopyWithImpl($value, $cast, t);
}

class RoleNestedFilterStateMapper
    extends ClassMapperBase<RoleNestedFilterState> {
  RoleNestedFilterStateMapper._();

  static RoleNestedFilterStateMapper? _instance;
  static RoleNestedFilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoleNestedFilterStateMapper._());
      ProcessStateMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RoleNestedFilterState';

  static ProcessState _$processState(RoleNestedFilterState v) => v.processState;
  static const Field<RoleNestedFilterState, ProcessState> _f$processState =
      Field('processState', _$processState,
          opt: true, def: ProcessState.loading);
  static RoleNestedFilterPageParams? _$rarityNestedFilterPageParams(
          RoleNestedFilterState v) =>
      v.rarityNestedFilterPageParams;
  static const Field<RoleNestedFilterState, RoleNestedFilterPageParams>
      _f$rarityNestedFilterPageParams = Field(
          'rarityNestedFilterPageParams', _$rarityNestedFilterPageParams,
          opt: true);
  static List<Role>? _$roles(RoleNestedFilterState v) => v.roles;
  static const Field<RoleNestedFilterState, List<Role>> _f$roles =
      Field('roles', _$roles, opt: true);
  static List<Role>? _$selectedRarities(RoleNestedFilterState v) =>
      v.selectedRarities;
  static const Field<RoleNestedFilterState, List<Role>> _f$selectedRarities =
      Field('selectedRarities', _$selectedRarities, opt: true);

  @override
  final MappableFields<RoleNestedFilterState> fields = const {
    #processState: _f$processState,
    #rarityNestedFilterPageParams: _f$rarityNestedFilterPageParams,
    #roles: _f$roles,
    #selectedRarities: _f$selectedRarities,
  };

  static RoleNestedFilterState _instantiate(DecodingData data) {
    return RoleNestedFilterState(
        processState: data.dec(_f$processState),
        rarityNestedFilterPageParams: data.dec(_f$rarityNestedFilterPageParams),
        roles: data.dec(_f$roles),
        selectedRarities: data.dec(_f$selectedRarities));
  }

  @override
  final Function instantiate = _instantiate;

  static RoleNestedFilterState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RoleNestedFilterState>(map);
  }

  static RoleNestedFilterState fromJson(String json) {
    return ensureInitialized().decodeJson<RoleNestedFilterState>(json);
  }
}

mixin RoleNestedFilterStateMappable {
  String toJson() {
    return RoleNestedFilterStateMapper.ensureInitialized()
        .encodeJson<RoleNestedFilterState>(this as RoleNestedFilterState);
  }

  Map<String, dynamic> toMap() {
    return RoleNestedFilterStateMapper.ensureInitialized()
        .encodeMap<RoleNestedFilterState>(this as RoleNestedFilterState);
  }

  RoleNestedFilterStateCopyWith<RoleNestedFilterState, RoleNestedFilterState,
          RoleNestedFilterState>
      get copyWith => _RoleNestedFilterStateCopyWithImpl(
          this as RoleNestedFilterState, $identity, $identity);
  @override
  String toString() {
    return RoleNestedFilterStateMapper.ensureInitialized()
        .stringifyValue(this as RoleNestedFilterState);
  }

  @override
  bool operator ==(Object other) {
    return RoleNestedFilterStateMapper.ensureInitialized()
        .equalsValue(this as RoleNestedFilterState, other);
  }

  @override
  int get hashCode {
    return RoleNestedFilterStateMapper.ensureInitialized()
        .hashValue(this as RoleNestedFilterState);
  }
}

extension RoleNestedFilterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RoleNestedFilterState, $Out> {
  RoleNestedFilterStateCopyWith<$R, RoleNestedFilterState, $Out>
      get $asRoleNestedFilterState =>
          $base.as((v, t, t2) => _RoleNestedFilterStateCopyWithImpl(v, t, t2));
}

abstract class RoleNestedFilterStateCopyWith<
    $R,
    $In extends RoleNestedFilterState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get roles;
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get selectedRarities;
  $R call(
      {ProcessState? processState,
      RoleNestedFilterPageParams? rarityNestedFilterPageParams,
      List<Role>? roles,
      List<Role>? selectedRarities});
  RoleNestedFilterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RoleNestedFilterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RoleNestedFilterState, $Out>
    implements RoleNestedFilterStateCopyWith<$R, RoleNestedFilterState, $Out> {
  _RoleNestedFilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RoleNestedFilterState> $mapper =
      RoleNestedFilterStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get roles =>
      $value.roles != null
          ? ListCopyWith($value.roles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(roles: v))
          : null;
  @override
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get selectedRarities =>
      $value.selectedRarities != null
          ? ListCopyWith($value.selectedRarities!,
              (v, t) => v.copyWith.$chain(t), (v) => call(selectedRarities: v))
          : null;
  @override
  $R call(
          {ProcessState? processState,
          Object? rarityNestedFilterPageParams = $none,
          Object? roles = $none,
          Object? selectedRarities = $none}) =>
      $apply(FieldCopyWithData({
        if (processState != null) #processState: processState,
        if (rarityNestedFilterPageParams != $none)
          #rarityNestedFilterPageParams: rarityNestedFilterPageParams,
        if (roles != $none) #roles: roles,
        if (selectedRarities != $none) #selectedRarities: selectedRarities
      }));
  @override
  RoleNestedFilterState $make(CopyWithData data) => RoleNestedFilterState(
      processState: data.get(#processState, or: $value.processState),
      rarityNestedFilterPageParams: data.get(#rarityNestedFilterPageParams,
          or: $value.rarityNestedFilterPageParams),
      roles: data.get(#roles, or: $value.roles),
      selectedRarities:
          data.get(#selectedRarities, or: $value.selectedRarities));

  @override
  RoleNestedFilterStateCopyWith<$R2, RoleNestedFilterState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RoleNestedFilterStateCopyWithImpl($value, $cast, t);
}
