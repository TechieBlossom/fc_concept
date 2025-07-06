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
      ChartHoveredMapper.ensureInitialized();
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
      _InitCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChartHoveredMapper extends SubClassMapperBase<ChartHovered> {
  ChartHoveredMapper._();

  static ChartHoveredMapper? _instance;
  static ChartHoveredMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChartHoveredMapper._());
      IndexEventMapper.ensureInitialized().addSubMapper(_instance!);
      IndexDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChartHovered';

  static IndexType _$indexType(ChartHovered v) => v.indexType;
  static const Field<ChartHovered, IndexType> _f$indexType =
      Field('indexType', _$indexType);
  static IndexData? _$indexData(ChartHovered v) => v.indexData;
  static const Field<ChartHovered, IndexData> _f$indexData =
      Field('indexData', _$indexData);

  @override
  final MappableFields<ChartHovered> fields = const {
    #indexType: _f$indexType,
    #indexData: _f$indexData,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'chartHovered';
  @override
  late final ClassMapperBase superMapper = IndexEventMapper.ensureInitialized();

  static ChartHovered _instantiate(DecodingData data) {
    return ChartHovered(
        indexType: data.dec(_f$indexType), indexData: data.dec(_f$indexData));
  }

  @override
  final Function instantiate = _instantiate;

  static ChartHovered fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChartHovered>(map);
  }

  static ChartHovered fromJson(String json) {
    return ensureInitialized().decodeJson<ChartHovered>(json);
  }
}

mixin ChartHoveredMappable {
  String toJson() {
    return ChartHoveredMapper.ensureInitialized()
        .encodeJson<ChartHovered>(this as ChartHovered);
  }

  Map<String, dynamic> toMap() {
    return ChartHoveredMapper.ensureInitialized()
        .encodeMap<ChartHovered>(this as ChartHovered);
  }

  ChartHoveredCopyWith<ChartHovered, ChartHovered, ChartHovered> get copyWith =>
      _ChartHoveredCopyWithImpl<ChartHovered, ChartHovered>(
          this as ChartHovered, $identity, $identity);
  @override
  String toString() {
    return ChartHoveredMapper.ensureInitialized()
        .stringifyValue(this as ChartHovered);
  }

  @override
  bool operator ==(Object other) {
    return ChartHoveredMapper.ensureInitialized()
        .equalsValue(this as ChartHovered, other);
  }

  @override
  int get hashCode {
    return ChartHoveredMapper.ensureInitialized()
        .hashValue(this as ChartHovered);
  }
}

extension ChartHoveredValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChartHovered, $Out> {
  ChartHoveredCopyWith<$R, ChartHovered, $Out> get $asChartHovered =>
      $base.as((v, t, t2) => _ChartHoveredCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChartHoveredCopyWith<$R, $In extends ChartHovered, $Out>
    implements IndexEventCopyWith<$R, $In, $Out> {
  IndexDataCopyWith<$R, IndexData, IndexData>? get indexData;
  @override
  $R call({IndexType? indexType, IndexData? indexData});
  ChartHoveredCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChartHoveredCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChartHovered, $Out>
    implements ChartHoveredCopyWith<$R, ChartHovered, $Out> {
  _ChartHoveredCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChartHovered> $mapper =
      ChartHoveredMapper.ensureInitialized();
  @override
  IndexDataCopyWith<$R, IndexData, IndexData>? get indexData =>
      $value.indexData?.copyWith.$chain((v) => call(indexData: v));
  @override
  $R call({IndexType? indexType, Object? indexData = $none}) =>
      $apply(FieldCopyWithData({
        if (indexType != null) #indexType: indexType,
        if (indexData != $none) #indexData: indexData
      }));
  @override
  ChartHovered $make(CopyWithData data) => ChartHovered(
      indexType: data.get(#indexType, or: $value.indexType),
      indexData: data.get(#indexData, or: $value.indexData));

  @override
  ChartHoveredCopyWith<$R2, ChartHovered, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChartHoveredCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class IndexStateMapper extends ClassMapperBase<IndexState> {
  IndexStateMapper._();

  static IndexStateMapper? _instance;
  static IndexStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IndexStateMapper._());
      IndexDataMapper.ensureInitialized();
      ProcessStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'IndexState';

  static List<IndexData>? _$entries(IndexState v) => v.entries;
  static const Field<IndexState, List<IndexData>> _f$entries =
      Field('entries', _$entries, opt: true);
  static double? _$min(IndexState v) => v.min;
  static const Field<IndexState, double> _f$min =
      Field('min', _$min, opt: true);
  static double? _$max(IndexState v) => v.max;
  static const Field<IndexState, double> _f$max =
      Field('max', _$max, opt: true);
  static double? _$interval(IndexState v) => v.interval;
  static const Field<IndexState, double> _f$interval =
      Field('interval', _$interval, opt: true);
  static double? _$current(IndexState v) => v.current;
  static const Field<IndexState, double> _f$current =
      Field('current', _$current, opt: true);
  static double? _$previous(IndexState v) => v.previous;
  static const Field<IndexState, double> _f$previous =
      Field('previous', _$previous, opt: true);
  static double? _$hoveredIndexData(IndexState v) => v.hoveredIndexData;
  static const Field<IndexState, double> _f$hoveredIndexData =
      Field('hoveredIndexData', _$hoveredIndexData, opt: true);
  static ProcessState? _$processState(IndexState v) => v.processState;
  static const Field<IndexState, ProcessState> _f$processState = Field(
      'processState', _$processState,
      opt: true, def: ProcessState.loading);

  @override
  final MappableFields<IndexState> fields = const {
    #entries: _f$entries,
    #min: _f$min,
    #max: _f$max,
    #interval: _f$interval,
    #current: _f$current,
    #previous: _f$previous,
    #hoveredIndexData: _f$hoveredIndexData,
    #processState: _f$processState,
  };

  static IndexState _instantiate(DecodingData data) {
    return IndexState(
        entries: data.dec(_f$entries),
        min: data.dec(_f$min),
        max: data.dec(_f$max),
        interval: data.dec(_f$interval),
        current: data.dec(_f$current),
        previous: data.dec(_f$previous),
        hoveredIndexData: data.dec(_f$hoveredIndexData),
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
      _IndexStateCopyWithImpl<IndexState, IndexState>(
          this as IndexState, $identity, $identity);
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
      $base.as((v, t, t2) => _IndexStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class IndexStateCopyWith<$R, $In extends IndexState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, IndexData, IndexDataCopyWith<$R, IndexData, IndexData>>?
      get entries;
  $R call(
      {List<IndexData>? entries,
      double? min,
      double? max,
      double? interval,
      double? current,
      double? previous,
      double? hoveredIndexData,
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
  ListCopyWith<$R, IndexData, IndexDataCopyWith<$R, IndexData, IndexData>>?
      get entries => $value.entries != null
          ? ListCopyWith($value.entries!, (v, t) => v.copyWith.$chain(t),
              (v) => call(entries: v))
          : null;
  @override
  $R call(
          {Object? entries = $none,
          Object? min = $none,
          Object? max = $none,
          Object? interval = $none,
          Object? current = $none,
          Object? previous = $none,
          Object? hoveredIndexData = $none,
          Object? processState = $none}) =>
      $apply(FieldCopyWithData({
        if (entries != $none) #entries: entries,
        if (min != $none) #min: min,
        if (max != $none) #max: max,
        if (interval != $none) #interval: interval,
        if (current != $none) #current: current,
        if (previous != $none) #previous: previous,
        if (hoveredIndexData != $none) #hoveredIndexData: hoveredIndexData,
        if (processState != $none) #processState: processState
      }));
  @override
  IndexState $make(CopyWithData data) => IndexState(
      entries: data.get(#entries, or: $value.entries),
      min: data.get(#min, or: $value.min),
      max: data.get(#max, or: $value.max),
      interval: data.get(#interval, or: $value.interval),
      current: data.get(#current, or: $value.current),
      previous: data.get(#previous, or: $value.previous),
      hoveredIndexData:
          data.get(#hoveredIndexData, or: $value.hoveredIndexData),
      processState: data.get(#processState, or: $value.processState));

  @override
  IndexStateCopyWith<$R2, IndexState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IndexStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
