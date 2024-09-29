// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'metadata_bloc.dart';

class MetadataEventMapper extends ClassMapperBase<MetadataEvent> {
  MetadataEventMapper._();

  static MetadataEventMapper? _instance;
  static MetadataEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MetadataEventMapper._());
      InitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MetadataEvent';

  @override
  final MappableFields<MetadataEvent> fields = const {};

  static MetadataEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'MetadataEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static MetadataEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MetadataEvent>(map);
  }

  static MetadataEvent fromJson(String json) {
    return ensureInitialized().decodeJson<MetadataEvent>(json);
  }
}

mixin MetadataEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  MetadataEventCopyWith<MetadataEvent, MetadataEvent, MetadataEvent>
      get copyWith;
}

abstract class MetadataEventCopyWith<$R, $In extends MetadataEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  MetadataEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      MetadataEventMapper.ensureInitialized().addSubMapper(_instance!);
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
      MetadataEventMapper.ensureInitialized();

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
    implements MetadataEventCopyWith<$R, $In, $Out> {
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

class MetadataStateMapper extends ClassMapperBase<MetadataState> {
  MetadataStateMapper._();

  static MetadataStateMapper? _instance;
  static MetadataStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MetadataStateMapper._());
      RoleMapper.ensureInitialized();
      PlayStyleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MetadataState';

  static List<Role> _$roles(MetadataState v) => v.roles;
  static const Field<MetadataState, List<Role>> _f$roles =
      Field('roles', _$roles, opt: true, def: const []);
  static List<PlayStyle> _$playStyles(MetadataState v) => v.playStyles;
  static const Field<MetadataState, List<PlayStyle>> _f$playStyles =
      Field('playStyles', _$playStyles, opt: true, def: const []);

  @override
  final MappableFields<MetadataState> fields = const {
    #roles: _f$roles,
    #playStyles: _f$playStyles,
  };

  static MetadataState _instantiate(DecodingData data) {
    return MetadataState(
        roles: data.dec(_f$roles), playStyles: data.dec(_f$playStyles));
  }

  @override
  final Function instantiate = _instantiate;

  static MetadataState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MetadataState>(map);
  }

  static MetadataState fromJson(String json) {
    return ensureInitialized().decodeJson<MetadataState>(json);
  }
}

mixin MetadataStateMappable {
  String toJson() {
    return MetadataStateMapper.ensureInitialized()
        .encodeJson<MetadataState>(this as MetadataState);
  }

  Map<String, dynamic> toMap() {
    return MetadataStateMapper.ensureInitialized()
        .encodeMap<MetadataState>(this as MetadataState);
  }

  MetadataStateCopyWith<MetadataState, MetadataState, MetadataState>
      get copyWith => _MetadataStateCopyWithImpl(
          this as MetadataState, $identity, $identity);
  @override
  String toString() {
    return MetadataStateMapper.ensureInitialized()
        .stringifyValue(this as MetadataState);
  }

  @override
  bool operator ==(Object other) {
    return MetadataStateMapper.ensureInitialized()
        .equalsValue(this as MetadataState, other);
  }

  @override
  int get hashCode {
    return MetadataStateMapper.ensureInitialized()
        .hashValue(this as MetadataState);
  }
}

extension MetadataStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MetadataState, $Out> {
  MetadataStateCopyWith<$R, MetadataState, $Out> get $asMetadataState =>
      $base.as((v, t, t2) => _MetadataStateCopyWithImpl(v, t, t2));
}

abstract class MetadataStateCopyWith<$R, $In extends MetadataState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>> get roles;
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>
      get playStyles;
  $R call({List<Role>? roles, List<PlayStyle>? playStyles});
  MetadataStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MetadataStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MetadataState, $Out>
    implements MetadataStateCopyWith<$R, MetadataState, $Out> {
  _MetadataStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MetadataState> $mapper =
      MetadataStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>> get roles =>
      ListCopyWith(
          $value.roles, (v, t) => v.copyWith.$chain(t), (v) => call(roles: v));
  @override
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>
      get playStyles => ListCopyWith($value.playStyles,
          (v, t) => v.copyWith.$chain(t), (v) => call(playStyles: v));
  @override
  $R call({List<Role>? roles, List<PlayStyle>? playStyles}) =>
      $apply(FieldCopyWithData({
        if (roles != null) #roles: roles,
        if (playStyles != null) #playStyles: playStyles
      }));
  @override
  MetadataState $make(CopyWithData data) => MetadataState(
      roles: data.get(#roles, or: $value.roles),
      playStyles: data.get(#playStyles, or: $value.playStyles));

  @override
  MetadataStateCopyWith<$R2, MetadataState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MetadataStateCopyWithImpl($value, $cast, t);
}
