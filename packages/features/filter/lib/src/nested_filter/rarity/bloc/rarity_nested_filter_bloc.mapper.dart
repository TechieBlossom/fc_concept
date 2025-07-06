// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rarity_nested_filter_bloc.dart';

class RarityNestedFilterEventMapper
    extends ClassMapperBase<RarityNestedFilterEvent> {
  RarityNestedFilterEventMapper._();

  static RarityNestedFilterEventMapper? _instance;
  static RarityNestedFilterEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = RarityNestedFilterEventMapper._());
      InitMapper.ensureInitialized();
      SelectRarityMapper.ensureInitialized();
      DoneMapper.ensureInitialized();
      ClearMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RarityNestedFilterEvent';

  @override
  final MappableFields<RarityNestedFilterEvent> fields = const {};

  static RarityNestedFilterEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'RarityNestedFilterEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static RarityNestedFilterEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RarityNestedFilterEvent>(map);
  }

  static RarityNestedFilterEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RarityNestedFilterEvent>(json);
  }
}

mixin RarityNestedFilterEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RarityNestedFilterEventCopyWith<RarityNestedFilterEvent,
      RarityNestedFilterEvent, RarityNestedFilterEvent> get copyWith;
}

abstract class RarityNestedFilterEventCopyWith<
    $R,
    $In extends RarityNestedFilterEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  RarityNestedFilterEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      RarityNestedFilterEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
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
      RarityNestedFilterEventMapper.ensureInitialized();

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
    implements RarityNestedFilterEventCopyWith<$R, $In, $Out> {
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

class SelectRarityMapper extends SubClassMapperBase<SelectRarity> {
  SelectRarityMapper._();

  static SelectRarityMapper? _instance;
  static SelectRarityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectRarityMapper._());
      RarityNestedFilterEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
      RarityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SelectRarity';

  static Rarity _$item(SelectRarity v) => v.item;
  static const Field<SelectRarity, Rarity> _f$item = Field('item', _$item);

  @override
  final MappableFields<SelectRarity> fields = const {
    #item: _f$item,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'selectRarity';
  @override
  late final ClassMapperBase superMapper =
      RarityNestedFilterEventMapper.ensureInitialized();

  static SelectRarity _instantiate(DecodingData data) {
    return SelectRarity(item: data.dec(_f$item));
  }

  @override
  final Function instantiate = _instantiate;

  static SelectRarity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SelectRarity>(map);
  }

  static SelectRarity fromJson(String json) {
    return ensureInitialized().decodeJson<SelectRarity>(json);
  }
}

mixin SelectRarityMappable {
  String toJson() {
    return SelectRarityMapper.ensureInitialized()
        .encodeJson<SelectRarity>(this as SelectRarity);
  }

  Map<String, dynamic> toMap() {
    return SelectRarityMapper.ensureInitialized()
        .encodeMap<SelectRarity>(this as SelectRarity);
  }

  SelectRarityCopyWith<SelectRarity, SelectRarity, SelectRarity> get copyWith =>
      _SelectRarityCopyWithImpl<SelectRarity, SelectRarity>(
          this as SelectRarity, $identity, $identity);
  @override
  String toString() {
    return SelectRarityMapper.ensureInitialized()
        .stringifyValue(this as SelectRarity);
  }

  @override
  bool operator ==(Object other) {
    return SelectRarityMapper.ensureInitialized()
        .equalsValue(this as SelectRarity, other);
  }

  @override
  int get hashCode {
    return SelectRarityMapper.ensureInitialized()
        .hashValue(this as SelectRarity);
  }
}

extension SelectRarityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SelectRarity, $Out> {
  SelectRarityCopyWith<$R, SelectRarity, $Out> get $asSelectRarity =>
      $base.as((v, t, t2) => _SelectRarityCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SelectRarityCopyWith<$R, $In extends SelectRarity, $Out>
    implements RarityNestedFilterEventCopyWith<$R, $In, $Out> {
  RarityCopyWith<$R, Rarity, Rarity> get item;
  @override
  $R call({Rarity? item});
  SelectRarityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SelectRarityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SelectRarity, $Out>
    implements SelectRarityCopyWith<$R, SelectRarity, $Out> {
  _SelectRarityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SelectRarity> $mapper =
      SelectRarityMapper.ensureInitialized();
  @override
  RarityCopyWith<$R, Rarity, Rarity> get item =>
      $value.item.copyWith.$chain((v) => call(item: v));
  @override
  $R call({Rarity? item}) =>
      $apply(FieldCopyWithData({if (item != null) #item: item}));
  @override
  SelectRarity $make(CopyWithData data) =>
      SelectRarity(item: data.get(#item, or: $value.item));

  @override
  SelectRarityCopyWith<$R2, SelectRarity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SelectRarityCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DoneMapper extends SubClassMapperBase<Done> {
  DoneMapper._();

  static DoneMapper? _instance;
  static DoneMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DoneMapper._());
      RarityNestedFilterEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
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
      RarityNestedFilterEventMapper.ensureInitialized();

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
      _DoneCopyWithImpl<Done, Done>(this as Done, $identity, $identity);
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
      $base.as((v, t, t2) => _DoneCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DoneCopyWith<$R, $In extends Done, $Out>
    implements RarityNestedFilterEventCopyWith<$R, $In, $Out> {
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
      _DoneCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ClearMapper extends SubClassMapperBase<Clear> {
  ClearMapper._();

  static ClearMapper? _instance;
  static ClearMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClearMapper._());
      RarityNestedFilterEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Clear';

  @override
  final MappableFields<Clear> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'clear';
  @override
  late final ClassMapperBase superMapper =
      RarityNestedFilterEventMapper.ensureInitialized();

  static Clear _instantiate(DecodingData data) {
    return Clear();
  }

  @override
  final Function instantiate = _instantiate;

  static Clear fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Clear>(map);
  }

  static Clear fromJson(String json) {
    return ensureInitialized().decodeJson<Clear>(json);
  }
}

mixin ClearMappable {
  String toJson() {
    return ClearMapper.ensureInitialized().encodeJson<Clear>(this as Clear);
  }

  Map<String, dynamic> toMap() {
    return ClearMapper.ensureInitialized().encodeMap<Clear>(this as Clear);
  }

  ClearCopyWith<Clear, Clear, Clear> get copyWith =>
      _ClearCopyWithImpl<Clear, Clear>(this as Clear, $identity, $identity);
  @override
  String toString() {
    return ClearMapper.ensureInitialized().stringifyValue(this as Clear);
  }

  @override
  bool operator ==(Object other) {
    return ClearMapper.ensureInitialized().equalsValue(this as Clear, other);
  }

  @override
  int get hashCode {
    return ClearMapper.ensureInitialized().hashValue(this as Clear);
  }
}

extension ClearValueCopy<$R, $Out> on ObjectCopyWith<$R, Clear, $Out> {
  ClearCopyWith<$R, Clear, $Out> get $asClear =>
      $base.as((v, t, t2) => _ClearCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClearCopyWith<$R, $In extends Clear, $Out>
    implements RarityNestedFilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  ClearCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClearCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Clear, $Out>
    implements ClearCopyWith<$R, Clear, $Out> {
  _ClearCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Clear> $mapper = ClearMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Clear $make(CopyWithData data) => Clear();

  @override
  ClearCopyWith<$R2, Clear, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ClearCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RarityNestedFilterStateMapper
    extends ClassMapperBase<RarityNestedFilterState> {
  RarityNestedFilterStateMapper._();

  static RarityNestedFilterStateMapper? _instance;
  static RarityNestedFilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = RarityNestedFilterStateMapper._());
      ProcessStateMapper.ensureInitialized();
      RarityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RarityNestedFilterState';

  static ProcessState _$processState(RarityNestedFilterState v) =>
      v.processState;
  static const Field<RarityNestedFilterState, ProcessState> _f$processState =
      Field('processState', _$processState,
          opt: true, def: ProcessState.loading);
  static RarityNestedFilterPageParams? _$rarityNestedFilterPageParams(
          RarityNestedFilterState v) =>
      v.rarityNestedFilterPageParams;
  static const Field<RarityNestedFilterState, RarityNestedFilterPageParams>
      _f$rarityNestedFilterPageParams = Field(
          'rarityNestedFilterPageParams', _$rarityNestedFilterPageParams,
          opt: true);
  static List<Rarity> _$rarities(RarityNestedFilterState v) => v.rarities;
  static const Field<RarityNestedFilterState, List<Rarity>> _f$rarities =
      Field('rarities', _$rarities, opt: true, def: const []);
  static List<Rarity>? _$selectedRarities(RarityNestedFilterState v) =>
      v.selectedRarities;
  static const Field<RarityNestedFilterState, List<Rarity>>
      _f$selectedRarities =
      Field('selectedRarities', _$selectedRarities, opt: true);

  @override
  final MappableFields<RarityNestedFilterState> fields = const {
    #processState: _f$processState,
    #rarityNestedFilterPageParams: _f$rarityNestedFilterPageParams,
    #rarities: _f$rarities,
    #selectedRarities: _f$selectedRarities,
  };

  static RarityNestedFilterState _instantiate(DecodingData data) {
    return RarityNestedFilterState(
        processState: data.dec(_f$processState),
        rarityNestedFilterPageParams: data.dec(_f$rarityNestedFilterPageParams),
        rarities: data.dec(_f$rarities),
        selectedRarities: data.dec(_f$selectedRarities));
  }

  @override
  final Function instantiate = _instantiate;

  static RarityNestedFilterState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RarityNestedFilterState>(map);
  }

  static RarityNestedFilterState fromJson(String json) {
    return ensureInitialized().decodeJson<RarityNestedFilterState>(json);
  }
}

mixin RarityNestedFilterStateMappable {
  String toJson() {
    return RarityNestedFilterStateMapper.ensureInitialized()
        .encodeJson<RarityNestedFilterState>(this as RarityNestedFilterState);
  }

  Map<String, dynamic> toMap() {
    return RarityNestedFilterStateMapper.ensureInitialized()
        .encodeMap<RarityNestedFilterState>(this as RarityNestedFilterState);
  }

  RarityNestedFilterStateCopyWith<RarityNestedFilterState,
          RarityNestedFilterState, RarityNestedFilterState>
      get copyWith => _RarityNestedFilterStateCopyWithImpl<
              RarityNestedFilterState, RarityNestedFilterState>(
          this as RarityNestedFilterState, $identity, $identity);
  @override
  String toString() {
    return RarityNestedFilterStateMapper.ensureInitialized()
        .stringifyValue(this as RarityNestedFilterState);
  }

  @override
  bool operator ==(Object other) {
    return RarityNestedFilterStateMapper.ensureInitialized()
        .equalsValue(this as RarityNestedFilterState, other);
  }

  @override
  int get hashCode {
    return RarityNestedFilterStateMapper.ensureInitialized()
        .hashValue(this as RarityNestedFilterState);
  }
}

extension RarityNestedFilterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RarityNestedFilterState, $Out> {
  RarityNestedFilterStateCopyWith<$R, RarityNestedFilterState, $Out>
      get $asRarityNestedFilterState => $base.as((v, t, t2) =>
          _RarityNestedFilterStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RarityNestedFilterStateCopyWith<
    $R,
    $In extends RarityNestedFilterState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Rarity, RarityCopyWith<$R, Rarity, Rarity>> get rarities;
  ListCopyWith<$R, Rarity, RarityCopyWith<$R, Rarity, Rarity>>?
      get selectedRarities;
  $R call(
      {ProcessState? processState,
      RarityNestedFilterPageParams? rarityNestedFilterPageParams,
      List<Rarity>? rarities,
      List<Rarity>? selectedRarities});
  RarityNestedFilterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RarityNestedFilterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RarityNestedFilterState, $Out>
    implements
        RarityNestedFilterStateCopyWith<$R, RarityNestedFilterState, $Out> {
  _RarityNestedFilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RarityNestedFilterState> $mapper =
      RarityNestedFilterStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Rarity, RarityCopyWith<$R, Rarity, Rarity>> get rarities =>
      ListCopyWith($value.rarities, (v, t) => v.copyWith.$chain(t),
          (v) => call(rarities: v));
  @override
  ListCopyWith<$R, Rarity, RarityCopyWith<$R, Rarity, Rarity>>?
      get selectedRarities => $value.selectedRarities != null
          ? ListCopyWith($value.selectedRarities!,
              (v, t) => v.copyWith.$chain(t), (v) => call(selectedRarities: v))
          : null;
  @override
  $R call(
          {ProcessState? processState,
          Object? rarityNestedFilterPageParams = $none,
          List<Rarity>? rarities,
          Object? selectedRarities = $none}) =>
      $apply(FieldCopyWithData({
        if (processState != null) #processState: processState,
        if (rarityNestedFilterPageParams != $none)
          #rarityNestedFilterPageParams: rarityNestedFilterPageParams,
        if (rarities != null) #rarities: rarities,
        if (selectedRarities != $none) #selectedRarities: selectedRarities
      }));
  @override
  RarityNestedFilterState $make(CopyWithData data) => RarityNestedFilterState(
      processState: data.get(#processState, or: $value.processState),
      rarityNestedFilterPageParams: data.get(#rarityNestedFilterPageParams,
          or: $value.rarityNestedFilterPageParams),
      rarities: data.get(#rarities, or: $value.rarities),
      selectedRarities:
          data.get(#selectedRarities, or: $value.selectedRarities));

  @override
  RarityNestedFilterStateCopyWith<$R2, RarityNestedFilterState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RarityNestedFilterStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
