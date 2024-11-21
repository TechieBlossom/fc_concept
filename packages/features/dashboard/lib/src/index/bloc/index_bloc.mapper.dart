// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'index_bloc.dart';

class IndexEventMapper extends ClassMapperBase<IndexEvent> {
  IndexEventMapper._();

  static IndexEventMapper? _instance;
  static IndexEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IndexEventMapper._());
      InitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'IndexEvent';

  @override
  final MappableFields<IndexEvent> fields = const {};

  static IndexEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'IndexEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static IndexEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IndexEvent>(map);
  }

  static IndexEvent fromJson(String json) {
    return ensureInitialized().decodeJson<IndexEvent>(json);
  }
}

mixin IndexEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  IndexEventCopyWith<IndexEvent, IndexEvent, IndexEvent> get copyWith;
}

abstract class IndexEventCopyWith<$R, $In extends IndexEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  IndexEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      IndexEventMapper.ensureInitialized().addSubMapper(_instance!);
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
  late final ClassMapperBase superMapper = IndexEventMapper.ensureInitialized();

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
    implements IndexEventCopyWith<$R, $In, $Out> {
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

class IndexStateMapper extends ClassMapperBase<IndexState> {
  IndexStateMapper._();

  static IndexStateMapper? _instance;
  static IndexStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IndexStateMapper._());
      ProcessStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'IndexState';

  static List<double>? _$values(IndexState v) => v.values;
  static const Field<IndexState, List<double>> _f$values =
      Field('values', _$values, opt: true);
  static double? _$min(IndexState v) => v.min;
  static const Field<IndexState, double> _f$min =
      Field('min', _$min, opt: true);
  static double? _$max(IndexState v) => v.max;
  static const Field<IndexState, double> _f$max =
      Field('max', _$max, opt: true);
  static double? _$interval(IndexState v) => v.interval;
  static const Field<IndexState, double> _f$interval =
      Field('interval', _$interval, opt: true);
  static ProcessState? _$processState(IndexState v) => v.processState;
  static const Field<IndexState, ProcessState> _f$processState = Field(
      'processState', _$processState,
      opt: true, def: ProcessState.loading);

  @override
  final MappableFields<IndexState> fields = const {
    #values: _f$values,
    #min: _f$min,
    #max: _f$max,
    #interval: _f$interval,
    #processState: _f$processState,
  };

  static IndexState _instantiate(DecodingData data) {
    return IndexState(
        values: data.dec(_f$values),
        min: data.dec(_f$min),
        max: data.dec(_f$max),
        interval: data.dec(_f$interval),
        processState: data.dec(_f$processState));
  }

  @override
  final Function instantiate = _instantiate;

  static IndexState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IndexState>(map);
  }

  static IndexState fromJson(String json) {
    return ensureInitialized().decodeJson<IndexState>(json);
  }
}

mixin IndexStateMappable {
  String toJson() {
    return IndexStateMapper.ensureInitialized()
        .encodeJson<IndexState>(this as IndexState);
  }

  Map<String, dynamic> toMap() {
    return IndexStateMapper.ensureInitialized()
        .encodeMap<IndexState>(this as IndexState);
  }

  IndexStateCopyWith<IndexState, IndexState, IndexState> get copyWith =>
      _IndexStateCopyWithImpl(this as IndexState, $identity, $identity);
  @override
  String toString() {
    return IndexStateMapper.ensureInitialized()
        .stringifyValue(this as IndexState);
  }

  @override
  bool operator ==(Object other) {
    return IndexStateMapper.ensureInitialized()
        .equalsValue(this as IndexState, other);
  }

  @override
  int get hashCode {
    return IndexStateMapper.ensureInitialized().hashValue(this as IndexState);
  }
}

extension IndexStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IndexState, $Out> {
  IndexStateCopyWith<$R, IndexState, $Out> get $asIndexState =>
      $base.as((v, t, t2) => _IndexStateCopyWithImpl(v, t, t2));
}

abstract class IndexStateCopyWith<$R, $In extends IndexState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, double, ObjectCopyWith<$R, double, double>>? get values;
  $R call(
      {List<double>? values,
      double? min,
      double? max,
      double? interval,
      ProcessState? processState});
  IndexStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IndexStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IndexState, $Out>
    implements IndexStateCopyWith<$R, IndexState, $Out> {
  _IndexStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IndexState> $mapper =
      IndexStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, double, ObjectCopyWith<$R, double, double>>? get values =>
      $value.values != null
          ? ListCopyWith($value.values!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(values: v))
          : null;
  @override
  $R call(
          {Object? values = $none,
          Object? min = $none,
          Object? max = $none,
          Object? interval = $none,
          Object? processState = $none}) =>
      $apply(FieldCopyWithData({
        if (values != $none) #values: values,
        if (min != $none) #min: min,
        if (max != $none) #max: max,
        if (interval != $none) #interval: interval,
        if (processState != $none) #processState: processState
      }));
  @override
  IndexState $make(CopyWithData data) => IndexState(
      values: data.get(#values, or: $value.values),
      min: data.get(#min, or: $value.min),
      max: data.get(#max, or: $value.max),
      interval: data.get(#interval, or: $value.interval),
      processState: data.get(#processState, or: $value.processState));

  @override
  IndexStateCopyWith<$R2, IndexState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IndexStateCopyWithImpl($value, $cast, t);
}
