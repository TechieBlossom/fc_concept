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
      CompareTapMapper.ensureInitialized();
      PlayersTapMapper.ensureInitialized();
      PopularTapMapper.ensureInitialized();
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

class CompareTapMapper extends SubClassMapperBase<CompareTap> {
  CompareTapMapper._();

  static CompareTapMapper? _instance;
  static CompareTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompareTapMapper._());
      AppDrawerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CompareTap';

  @override
  final MappableFields<CompareTap> fields = const {};

  @override
  final String discriminatorKey = 'appDrawerEvent';
  @override
  final dynamic discriminatorValue = 'compareTap';
  @override
  late final ClassMapperBase superMapper =
      AppDrawerEventMapper.ensureInitialized();

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
    implements AppDrawerEventCopyWith<$R, $In, $Out> {
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

class PlayersTapMapper extends SubClassMapperBase<PlayersTap> {
  PlayersTapMapper._();

  static PlayersTapMapper? _instance;
  static PlayersTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayersTapMapper._());
      AppDrawerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PlayersTap';

  @override
  final MappableFields<PlayersTap> fields = const {};

  @override
  final String discriminatorKey = 'appDrawerEvent';
  @override
  final dynamic discriminatorValue = 'playersTap';
  @override
  late final ClassMapperBase superMapper =
      AppDrawerEventMapper.ensureInitialized();

  static PlayersTap _instantiate(DecodingData data) {
    return PlayersTap();
  }

  @override
  final Function instantiate = _instantiate;

  static PlayersTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayersTap>(map);
  }

  static PlayersTap fromJson(String json) {
    return ensureInitialized().decodeJson<PlayersTap>(json);
  }
}

mixin PlayersTapMappable {
  String toJson() {
    return PlayersTapMapper.ensureInitialized()
        .encodeJson<PlayersTap>(this as PlayersTap);
  }

  Map<String, dynamic> toMap() {
    return PlayersTapMapper.ensureInitialized()
        .encodeMap<PlayersTap>(this as PlayersTap);
  }

  PlayersTapCopyWith<PlayersTap, PlayersTap, PlayersTap> get copyWith =>
      _PlayersTapCopyWithImpl(this as PlayersTap, $identity, $identity);
  @override
  String toString() {
    return PlayersTapMapper.ensureInitialized()
        .stringifyValue(this as PlayersTap);
  }

  @override
  bool operator ==(Object other) {
    return PlayersTapMapper.ensureInitialized()
        .equalsValue(this as PlayersTap, other);
  }

  @override
  int get hashCode {
    return PlayersTapMapper.ensureInitialized().hashValue(this as PlayersTap);
  }
}

extension PlayersTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayersTap, $Out> {
  PlayersTapCopyWith<$R, PlayersTap, $Out> get $asPlayersTap =>
      $base.as((v, t, t2) => _PlayersTapCopyWithImpl(v, t, t2));
}

abstract class PlayersTapCopyWith<$R, $In extends PlayersTap, $Out>
    implements AppDrawerEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  PlayersTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayersTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayersTap, $Out>
    implements PlayersTapCopyWith<$R, PlayersTap, $Out> {
  _PlayersTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayersTap> $mapper =
      PlayersTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  PlayersTap $make(CopyWithData data) => PlayersTap();

  @override
  PlayersTapCopyWith<$R2, PlayersTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayersTapCopyWithImpl($value, $cast, t);
}

class PopularTapMapper extends SubClassMapperBase<PopularTap> {
  PopularTapMapper._();

  static PopularTapMapper? _instance;
  static PopularTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PopularTapMapper._());
      AppDrawerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PopularTap';

  @override
  final MappableFields<PopularTap> fields = const {};

  @override
  final String discriminatorKey = 'appDrawerEvent';
  @override
  final dynamic discriminatorValue = 'popularTap';
  @override
  late final ClassMapperBase superMapper =
      AppDrawerEventMapper.ensureInitialized();

  static PopularTap _instantiate(DecodingData data) {
    return PopularTap();
  }

  @override
  final Function instantiate = _instantiate;

  static PopularTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PopularTap>(map);
  }

  static PopularTap fromJson(String json) {
    return ensureInitialized().decodeJson<PopularTap>(json);
  }
}

mixin PopularTapMappable {
  String toJson() {
    return PopularTapMapper.ensureInitialized()
        .encodeJson<PopularTap>(this as PopularTap);
  }

  Map<String, dynamic> toMap() {
    return PopularTapMapper.ensureInitialized()
        .encodeMap<PopularTap>(this as PopularTap);
  }

  PopularTapCopyWith<PopularTap, PopularTap, PopularTap> get copyWith =>
      _PopularTapCopyWithImpl(this as PopularTap, $identity, $identity);
  @override
  String toString() {
    return PopularTapMapper.ensureInitialized()
        .stringifyValue(this as PopularTap);
  }

  @override
  bool operator ==(Object other) {
    return PopularTapMapper.ensureInitialized()
        .equalsValue(this as PopularTap, other);
  }

  @override
  int get hashCode {
    return PopularTapMapper.ensureInitialized().hashValue(this as PopularTap);
  }
}

extension PopularTapValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PopularTap, $Out> {
  PopularTapCopyWith<$R, PopularTap, $Out> get $asPopularTap =>
      $base.as((v, t, t2) => _PopularTapCopyWithImpl(v, t, t2));
}

abstract class PopularTapCopyWith<$R, $In extends PopularTap, $Out>
    implements AppDrawerEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  PopularTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PopularTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PopularTap, $Out>
    implements PopularTapCopyWith<$R, PopularTap, $Out> {
  _PopularTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PopularTap> $mapper =
      PopularTapMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  PopularTap $make(CopyWithData data) => PopularTap();

  @override
  PopularTapCopyWith<$R2, PopularTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PopularTapCopyWithImpl($value, $cast, t);
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
