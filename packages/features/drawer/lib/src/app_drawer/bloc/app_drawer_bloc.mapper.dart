// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'app_drawer_bloc.dart';

class AppDrawerEventMapper extends ClassMapperBase<AppDrawerEvent> {
  AppDrawerEventMapper._();

  static AppDrawerEventMapper? _instance;
  static AppDrawerEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppDrawerEventMapper._());
      InitMapper.ensureInitialized();
      CompareMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppDrawerEvent';

  @override
  final MappableFields<AppDrawerEvent> fields = const {};

  static AppDrawerEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'AppDrawerEvent', 'appDrawerEvent', '${data.value['appDrawerEvent']}');
  }

  @override
  final Function instantiate = _instantiate;

  static AppDrawerEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppDrawerEvent>(map);
  }

  static AppDrawerEvent fromJson(String json) {
    return ensureInitialized().decodeJson<AppDrawerEvent>(json);
  }
}

mixin AppDrawerEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  AppDrawerEventCopyWith<AppDrawerEvent, AppDrawerEvent, AppDrawerEvent>
      get copyWith;
}

abstract class AppDrawerEventCopyWith<$R, $In extends AppDrawerEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  AppDrawerEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      AppDrawerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Init';

  @override
  final MappableFields<Init> fields = const {};

  @override
  final String discriminatorKey = 'appDrawerEvent';
  @override
  final dynamic discriminatorValue = 'init';
  @override
  late final ClassMapperBase superMapper =
      AppDrawerEventMapper.ensureInitialized();

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
    implements AppDrawerEventCopyWith<$R, $In, $Out> {
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

class CompareMapper extends SubClassMapperBase<Compare> {
  CompareMapper._();

  static CompareMapper? _instance;
  static CompareMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompareMapper._());
      AppDrawerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Compare';

  @override
  final MappableFields<Compare> fields = const {};

  @override
  final String discriminatorKey = 'appDrawerEvent';
  @override
  final dynamic discriminatorValue = 'compare';
  @override
  late final ClassMapperBase superMapper =
      AppDrawerEventMapper.ensureInitialized();

  static Compare _instantiate(DecodingData data) {
    return Compare();
  }

  @override
  final Function instantiate = _instantiate;

  static Compare fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Compare>(map);
  }

  static Compare fromJson(String json) {
    return ensureInitialized().decodeJson<Compare>(json);
  }
}

mixin CompareMappable {
  String toJson() {
    return CompareMapper.ensureInitialized()
        .encodeJson<Compare>(this as Compare);
  }

  Map<String, dynamic> toMap() {
    return CompareMapper.ensureInitialized()
        .encodeMap<Compare>(this as Compare);
  }

  CompareCopyWith<Compare, Compare, Compare> get copyWith =>
      _CompareCopyWithImpl(this as Compare, $identity, $identity);
  @override
  String toString() {
    return CompareMapper.ensureInitialized().stringifyValue(this as Compare);
  }

  @override
  bool operator ==(Object other) {
    return CompareMapper.ensureInitialized()
        .equalsValue(this as Compare, other);
  }

  @override
  int get hashCode {
    return CompareMapper.ensureInitialized().hashValue(this as Compare);
  }
}

extension CompareValueCopy<$R, $Out> on ObjectCopyWith<$R, Compare, $Out> {
  CompareCopyWith<$R, Compare, $Out> get $asCompare =>
      $base.as((v, t, t2) => _CompareCopyWithImpl(v, t, t2));
}

abstract class CompareCopyWith<$R, $In extends Compare, $Out>
    implements AppDrawerEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  CompareCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CompareCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Compare, $Out>
    implements CompareCopyWith<$R, Compare, $Out> {
  _CompareCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Compare> $mapper =
      CompareMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Compare $make(CopyWithData data) => Compare();

  @override
  CompareCopyWith<$R2, Compare, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CompareCopyWithImpl($value, $cast, t);
}

class AppDrawerStateMapper extends ClassMapperBase<AppDrawerState> {
  AppDrawerStateMapper._();

  static AppDrawerStateMapper? _instance;
  static AppDrawerStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppDrawerStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AppDrawerState';

  static int? _$playerCount(AppDrawerState v) => v.playerCount;
  static const Field<AppDrawerState, int> _f$playerCount =
      Field('playerCount', _$playerCount, opt: true);

  @override
  final MappableFields<AppDrawerState> fields = const {
    #playerCount: _f$playerCount,
  };

  static AppDrawerState _instantiate(DecodingData data) {
    return AppDrawerState(playerCount: data.dec(_f$playerCount));
  }

  @override
  final Function instantiate = _instantiate;

  static AppDrawerState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppDrawerState>(map);
  }

  static AppDrawerState fromJson(String json) {
    return ensureInitialized().decodeJson<AppDrawerState>(json);
  }
}

mixin AppDrawerStateMappable {
  String toJson() {
    return AppDrawerStateMapper.ensureInitialized()
        .encodeJson<AppDrawerState>(this as AppDrawerState);
  }

  Map<String, dynamic> toMap() {
    return AppDrawerStateMapper.ensureInitialized()
        .encodeMap<AppDrawerState>(this as AppDrawerState);
  }

  AppDrawerStateCopyWith<AppDrawerState, AppDrawerState, AppDrawerState>
      get copyWith => _AppDrawerStateCopyWithImpl(
          this as AppDrawerState, $identity, $identity);
  @override
  String toString() {
    return AppDrawerStateMapper.ensureInitialized()
        .stringifyValue(this as AppDrawerState);
  }

  @override
  bool operator ==(Object other) {
    return AppDrawerStateMapper.ensureInitialized()
        .equalsValue(this as AppDrawerState, other);
  }

  @override
  int get hashCode {
    return AppDrawerStateMapper.ensureInitialized()
        .hashValue(this as AppDrawerState);
  }
}

extension AppDrawerStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AppDrawerState, $Out> {
  AppDrawerStateCopyWith<$R, AppDrawerState, $Out> get $asAppDrawerState =>
      $base.as((v, t, t2) => _AppDrawerStateCopyWithImpl(v, t, t2));
}

abstract class AppDrawerStateCopyWith<$R, $In extends AppDrawerState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? playerCount});
  AppDrawerStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AppDrawerStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AppDrawerState, $Out>
    implements AppDrawerStateCopyWith<$R, AppDrawerState, $Out> {
  _AppDrawerStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppDrawerState> $mapper =
      AppDrawerStateMapper.ensureInitialized();
  @override
  $R call({Object? playerCount = $none}) => $apply(
      FieldCopyWithData({if (playerCount != $none) #playerCount: playerCount}));
  @override
  AppDrawerState $make(CopyWithData data) => AppDrawerState(
      playerCount: data.get(#playerCount, or: $value.playerCount));

  @override
  AppDrawerStateCopyWith<$R2, AppDrawerState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AppDrawerStateCopyWithImpl($value, $cast, t);
}
