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
