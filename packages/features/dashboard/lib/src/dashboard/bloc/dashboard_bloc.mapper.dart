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

class DashboardStateMapper extends ClassMapperBase<DashboardState> {
  DashboardStateMapper._();

  static DashboardStateMapper? _instance;
  static DashboardStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DashboardStateMapper._());
      ProcessStateMapper.ensureInitialized();
      IndexDataMapper.ensureInitialized();
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

  @override
  final MappableFields<DashboardState> fields = const {
    #processState: _f$processState,
    #indexes: _f$indexes,
  };

  static DashboardState _instantiate(DecodingData data) {
    return DashboardState(
        processState: data.dec(_f$processState), indexes: data.dec(_f$indexes));
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
  $R call({ProcessState? processState, List<IndexData>? indexes});
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
  $R call({ProcessState? processState, Object? indexes = $none}) =>
      $apply(FieldCopyWithData({
        if (processState != null) #processState: processState,
        if (indexes != $none) #indexes: indexes
      }));
  @override
  DashboardState $make(CopyWithData data) => DashboardState(
      processState: data.get(#processState, or: $value.processState),
      indexes: data.get(#indexes, or: $value.indexes));

  @override
  DashboardStateCopyWith<$R2, DashboardState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DashboardStateCopyWithImpl($value, $cast, t);
}
