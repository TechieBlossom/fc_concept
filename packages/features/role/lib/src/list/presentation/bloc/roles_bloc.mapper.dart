// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'roles_bloc.dart';

class RolesEventMapper extends ClassMapperBase<RolesEvent> {
  RolesEventMapper._();

  static RolesEventMapper? _instance;
  static RolesEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RolesEventMapper._());
      InitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RolesEvent';

  @override
  final MappableFields<RolesEvent> fields = const {};

  static RolesEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'RolesEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static RolesEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RolesEvent>(map);
  }

  static RolesEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RolesEvent>(json);
  }
}

mixin RolesEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RolesEventCopyWith<RolesEvent, RolesEvent, RolesEvent> get copyWith;
}

abstract class RolesEventCopyWith<$R, $In extends RolesEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  RolesEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      RolesEventMapper.ensureInitialized().addSubMapper(_instance!);
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
  late final ClassMapperBase superMapper = RolesEventMapper.ensureInitialized();

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
    implements RolesEventCopyWith<$R, $In, $Out> {
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

class RolesStateMapper extends ClassMapperBase<RolesState> {
  RolesStateMapper._();

  static RolesStateMapper? _instance;
  static RolesStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RolesStateMapper._());
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RolesState';

  static List<Role> _$roles(RolesState v) => v.roles;
  static const Field<RolesState, List<Role>> _f$roles =
      Field('roles', _$roles, opt: true, def: const []);

  @override
  final MappableFields<RolesState> fields = const {
    #roles: _f$roles,
  };

  static RolesState _instantiate(DecodingData data) {
    return RolesState(roles: data.dec(_f$roles));
  }

  @override
  final Function instantiate = _instantiate;

  static RolesState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RolesState>(map);
  }

  static RolesState fromJson(String json) {
    return ensureInitialized().decodeJson<RolesState>(json);
  }
}

mixin RolesStateMappable {
  String toJson() {
    return RolesStateMapper.ensureInitialized()
        .encodeJson<RolesState>(this as RolesState);
  }

  Map<String, dynamic> toMap() {
    return RolesStateMapper.ensureInitialized()
        .encodeMap<RolesState>(this as RolesState);
  }

  RolesStateCopyWith<RolesState, RolesState, RolesState> get copyWith =>
      _RolesStateCopyWithImpl(this as RolesState, $identity, $identity);
  @override
  String toString() {
    return RolesStateMapper.ensureInitialized()
        .stringifyValue(this as RolesState);
  }

  @override
  bool operator ==(Object other) {
    return RolesStateMapper.ensureInitialized()
        .equalsValue(this as RolesState, other);
  }

  @override
  int get hashCode {
    return RolesStateMapper.ensureInitialized().hashValue(this as RolesState);
  }
}

extension RolesStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RolesState, $Out> {
  RolesStateCopyWith<$R, RolesState, $Out> get $asRolesState =>
      $base.as((v, t, t2) => _RolesStateCopyWithImpl(v, t, t2));
}

abstract class RolesStateCopyWith<$R, $In extends RolesState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>> get roles;
  $R call({List<Role>? roles});
  RolesStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RolesStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RolesState, $Out>
    implements RolesStateCopyWith<$R, RolesState, $Out> {
  _RolesStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RolesState> $mapper =
      RolesStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>> get roles =>
      ListCopyWith(
          $value.roles, (v, t) => v.copyWith.$chain(t), (v) => call(roles: v));
  @override
  $R call({List<Role>? roles}) =>
      $apply(FieldCopyWithData({if (roles != null) #roles: roles}));
  @override
  RolesState $make(CopyWithData data) =>
      RolesState(roles: data.get(#roles, or: $value.roles));

  @override
  RolesStateCopyWith<$R2, RolesState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RolesStateCopyWithImpl($value, $cast, t);
}
