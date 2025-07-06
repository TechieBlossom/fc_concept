// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nested_filter_bloc.dart';

class NestedFilterEventMapper extends ClassMapperBase<NestedFilterEvent> {
  NestedFilterEventMapper._();

  static NestedFilterEventMapper? _instance;
  static NestedFilterEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NestedFilterEventMapper._());
      InitMapper.ensureInitialized();
      SelectClubMapper.ensureInitialized();
      SelectItemMapper.ensureInitialized();
      DoneMapper.ensureInitialized();
      ClearMapper.ensureInitialized();
      BackMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NestedFilterEvent';

  @override
  final MappableFields<NestedFilterEvent> fields = const {};

  static NestedFilterEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass('NestedFilterEvent',
        'nestedFilterEvent', '${data.value['nestedFilterEvent']}');
  }

  @override
  final Function instantiate = _instantiate;

  static NestedFilterEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NestedFilterEvent>(map);
  }

  static NestedFilterEvent fromJson(String json) {
    return ensureInitialized().decodeJson<NestedFilterEvent>(json);
  }
}

mixin NestedFilterEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  NestedFilterEventCopyWith<NestedFilterEvent, NestedFilterEvent,
      NestedFilterEvent> get copyWith;
}

abstract class NestedFilterEventCopyWith<$R, $In extends NestedFilterEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  NestedFilterEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      NestedFilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Init';

  @override
  final MappableFields<Init> fields = const {};

  @override
  final String discriminatorKey = 'nestedFilterEvent';
  @override
  final dynamic discriminatorValue = 'init';
  @override
  late final ClassMapperBase superMapper =
      NestedFilterEventMapper.ensureInitialized();

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
    implements NestedFilterEventCopyWith<$R, $In, $Out> {
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

class SelectClubMapper extends SubClassMapperBase<SelectClub> {
  SelectClubMapper._();

  static SelectClubMapper? _instance;
  static SelectClubMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectClubMapper._());
      NestedFilterEventMapper.ensureInitialized().addSubMapper(_instance!);
      ClubMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SelectClub';

  static Club _$club(SelectClub v) => v.club;
  static const Field<SelectClub, Club> _f$club = Field('club', _$club);

  @override
  final MappableFields<SelectClub> fields = const {
    #club: _f$club,
  };

  @override
  final String discriminatorKey = 'nestedFilterEvent';
  @override
  final dynamic discriminatorValue = 'selectClub';
  @override
  late final ClassMapperBase superMapper =
      NestedFilterEventMapper.ensureInitialized();

  static SelectClub _instantiate(DecodingData data) {
    return SelectClub(club: data.dec(_f$club));
  }

  @override
  final Function instantiate = _instantiate;

  static SelectClub fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SelectClub>(map);
  }

  static SelectClub fromJson(String json) {
    return ensureInitialized().decodeJson<SelectClub>(json);
  }
}

mixin SelectClubMappable {
  String toJson() {
    return SelectClubMapper.ensureInitialized()
        .encodeJson<SelectClub>(this as SelectClub);
  }

  Map<String, dynamic> toMap() {
    return SelectClubMapper.ensureInitialized()
        .encodeMap<SelectClub>(this as SelectClub);
  }

  SelectClubCopyWith<SelectClub, SelectClub, SelectClub> get copyWith =>
      _SelectClubCopyWithImpl<SelectClub, SelectClub>(
          this as SelectClub, $identity, $identity);
  @override
  String toString() {
    return SelectClubMapper.ensureInitialized()
        .stringifyValue(this as SelectClub);
  }

  @override
  bool operator ==(Object other) {
    return SelectClubMapper.ensureInitialized()
        .equalsValue(this as SelectClub, other);
  }

  @override
  int get hashCode {
    return SelectClubMapper.ensureInitialized().hashValue(this as SelectClub);
  }
}

extension SelectClubValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SelectClub, $Out> {
  SelectClubCopyWith<$R, SelectClub, $Out> get $asSelectClub =>
      $base.as((v, t, t2) => _SelectClubCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SelectClubCopyWith<$R, $In extends SelectClub, $Out>
    implements NestedFilterEventCopyWith<$R, $In, $Out> {
  ClubCopyWith<$R, Club, Club> get club;
  @override
  $R call({Club? club});
  SelectClubCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SelectClubCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SelectClub, $Out>
    implements SelectClubCopyWith<$R, SelectClub, $Out> {
  _SelectClubCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SelectClub> $mapper =
      SelectClubMapper.ensureInitialized();
  @override
  ClubCopyWith<$R, Club, Club> get club =>
      $value.club.copyWith.$chain((v) => call(club: v));
  @override
  $R call({Club? club}) =>
      $apply(FieldCopyWithData({if (club != null) #club: club}));
  @override
  SelectClub $make(CopyWithData data) =>
      SelectClub(club: data.get(#club, or: $value.club));

  @override
  SelectClubCopyWith<$R2, SelectClub, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SelectClubCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SelectItemMapper extends SubClassMapperBase<SelectItem> {
  SelectItemMapper._();

  static SelectItemMapper? _instance;
  static SelectItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectItemMapper._());
      NestedFilterEventMapper.ensureInitialized().addSubMapper(_instance!);
      NestedFilterLayoutTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SelectItem';

  static NestedFilterLayoutType _$item(SelectItem v) => v.item;
  static const Field<SelectItem, NestedFilterLayoutType> _f$item =
      Field('item', _$item);

  @override
  final MappableFields<SelectItem> fields = const {
    #item: _f$item,
  };

  @override
  final String discriminatorKey = 'nestedFilterEvent';
  @override
  final dynamic discriminatorValue = 'selectItem';
  @override
  late final ClassMapperBase superMapper =
      NestedFilterEventMapper.ensureInitialized();

  static SelectItem _instantiate(DecodingData data) {
    return SelectItem(item: data.dec(_f$item));
  }

  @override
  final Function instantiate = _instantiate;

  static SelectItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SelectItem>(map);
  }

  static SelectItem fromJson(String json) {
    return ensureInitialized().decodeJson<SelectItem>(json);
  }
}

mixin SelectItemMappable {
  String toJson() {
    return SelectItemMapper.ensureInitialized()
        .encodeJson<SelectItem>(this as SelectItem);
  }

  Map<String, dynamic> toMap() {
    return SelectItemMapper.ensureInitialized()
        .encodeMap<SelectItem>(this as SelectItem);
  }

  SelectItemCopyWith<SelectItem, SelectItem, SelectItem> get copyWith =>
      _SelectItemCopyWithImpl<SelectItem, SelectItem>(
          this as SelectItem, $identity, $identity);
  @override
  String toString() {
    return SelectItemMapper.ensureInitialized()
        .stringifyValue(this as SelectItem);
  }

  @override
  bool operator ==(Object other) {
    return SelectItemMapper.ensureInitialized()
        .equalsValue(this as SelectItem, other);
  }

  @override
  int get hashCode {
    return SelectItemMapper.ensureInitialized().hashValue(this as SelectItem);
  }
}

extension SelectItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SelectItem, $Out> {
  SelectItemCopyWith<$R, SelectItem, $Out> get $asSelectItem =>
      $base.as((v, t, t2) => _SelectItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SelectItemCopyWith<$R, $In extends SelectItem, $Out>
    implements NestedFilterEventCopyWith<$R, $In, $Out> {
  NestedFilterLayoutTypeCopyWith<$R, NestedFilterLayoutType,
      NestedFilterLayoutType> get item;
  @override
  $R call({NestedFilterLayoutType? item});
  SelectItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SelectItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SelectItem, $Out>
    implements SelectItemCopyWith<$R, SelectItem, $Out> {
  _SelectItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SelectItem> $mapper =
      SelectItemMapper.ensureInitialized();
  @override
  NestedFilterLayoutTypeCopyWith<$R, NestedFilterLayoutType,
          NestedFilterLayoutType>
      get item => $value.item.copyWith.$chain((v) => call(item: v));
  @override
  $R call({NestedFilterLayoutType? item}) =>
      $apply(FieldCopyWithData({if (item != null) #item: item}));
  @override
  SelectItem $make(CopyWithData data) =>
      SelectItem(item: data.get(#item, or: $value.item));

  @override
  SelectItemCopyWith<$R2, SelectItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SelectItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DoneMapper extends SubClassMapperBase<Done> {
  DoneMapper._();

  static DoneMapper? _instance;
  static DoneMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DoneMapper._());
      NestedFilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Done';

  @override
  final MappableFields<Done> fields = const {};

  @override
  final String discriminatorKey = 'nestedFilterEvent';
  @override
  final dynamic discriminatorValue = 'done';
  @override
  late final ClassMapperBase superMapper =
      NestedFilterEventMapper.ensureInitialized();

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
    implements NestedFilterEventCopyWith<$R, $In, $Out> {
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
      NestedFilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Clear';

  static NestedFilterType _$nestedFilterType(Clear v) => v.nestedFilterType;
  static const Field<Clear, NestedFilterType> _f$nestedFilterType =
      Field('nestedFilterType', _$nestedFilterType);

  @override
  final MappableFields<Clear> fields = const {
    #nestedFilterType: _f$nestedFilterType,
  };

  @override
  final String discriminatorKey = 'nestedFilterEvent';
  @override
  final dynamic discriminatorValue = 'clear';
  @override
  late final ClassMapperBase superMapper =
      NestedFilterEventMapper.ensureInitialized();

  static Clear _instantiate(DecodingData data) {
    return Clear(nestedFilterType: data.dec(_f$nestedFilterType));
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
    implements NestedFilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call({NestedFilterType? nestedFilterType});
  ClearCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClearCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Clear, $Out>
    implements ClearCopyWith<$R, Clear, $Out> {
  _ClearCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Clear> $mapper = ClearMapper.ensureInitialized();
  @override
  $R call({NestedFilterType? nestedFilterType}) => $apply(FieldCopyWithData(
      {if (nestedFilterType != null) #nestedFilterType: nestedFilterType}));
  @override
  Clear $make(CopyWithData data) => Clear(
      nestedFilterType:
          data.get(#nestedFilterType, or: $value.nestedFilterType));

  @override
  ClearCopyWith<$R2, Clear, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ClearCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BackMapper extends SubClassMapperBase<Back> {
  BackMapper._();

  static BackMapper? _instance;
  static BackMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BackMapper._());
      NestedFilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Back';

  @override
  final MappableFields<Back> fields = const {};

  @override
  final String discriminatorKey = 'nestedFilterEvent';
  @override
  final dynamic discriminatorValue = 'Back';
  @override
  late final ClassMapperBase superMapper =
      NestedFilterEventMapper.ensureInitialized();

  static Back _instantiate(DecodingData data) {
    return Back();
  }

  @override
  final Function instantiate = _instantiate;

  static Back fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Back>(map);
  }

  static Back fromJson(String json) {
    return ensureInitialized().decodeJson<Back>(json);
  }
}

mixin BackMappable {
  String toJson() {
    return BackMapper.ensureInitialized().encodeJson<Back>(this as Back);
  }

  Map<String, dynamic> toMap() {
    return BackMapper.ensureInitialized().encodeMap<Back>(this as Back);
  }

  BackCopyWith<Back, Back, Back> get copyWith =>
      _BackCopyWithImpl<Back, Back>(this as Back, $identity, $identity);
  @override
  String toString() {
    return BackMapper.ensureInitialized().stringifyValue(this as Back);
  }

  @override
  bool operator ==(Object other) {
    return BackMapper.ensureInitialized().equalsValue(this as Back, other);
  }

  @override
  int get hashCode {
    return BackMapper.ensureInitialized().hashValue(this as Back);
  }
}

extension BackValueCopy<$R, $Out> on ObjectCopyWith<$R, Back, $Out> {
  BackCopyWith<$R, Back, $Out> get $asBack =>
      $base.as((v, t, t2) => _BackCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BackCopyWith<$R, $In extends Back, $Out>
    implements NestedFilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  BackCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BackCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Back, $Out>
    implements BackCopyWith<$R, Back, $Out> {
  _BackCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Back> $mapper = BackMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Back $make(CopyWithData data) => Back();

  @override
  BackCopyWith<$R2, Back, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BackCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NestedFilterStateMapper extends ClassMapperBase<NestedFilterState> {
  NestedFilterStateMapper._();

  static NestedFilterStateMapper? _instance;
  static NestedFilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NestedFilterStateMapper._());
      ProcessStateMapper.ensureInitialized();
      LeagueMapper.ensureInitialized();
      NestedFilterLayoutTypeMapper.ensureInitialized();
      NationMapper.ensureInitialized();
      ClubMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NestedFilterState';

  static ProcessState _$processState(NestedFilterState v) => v.processState;
  static const Field<NestedFilterState, ProcessState> _f$processState = Field(
      'processState', _$processState,
      opt: true, def: ProcessState.loading);
  static NestedFilterPageParams? _$nestedFilterPageParams(
          NestedFilterState v) =>
      v.nestedFilterPageParams;
  static const Field<NestedFilterState, NestedFilterPageParams>
      _f$nestedFilterPageParams =
      Field('nestedFilterPageParams', _$nestedFilterPageParams, opt: true);
  static List<League>? _$topLeagues(NestedFilterState v) => v.topLeagues;
  static const Field<NestedFilterState, List<League>> _f$topLeagues =
      Field('topLeagues', _$topLeagues, opt: true);
  static List<League>? _$otherLeagues(NestedFilterState v) => v.otherLeagues;
  static const Field<NestedFilterState, List<League>> _f$otherLeagues =
      Field('otherLeagues', _$otherLeagues, opt: true);
  static List<League>? _$selectedLeagues(NestedFilterState v) =>
      v.selectedLeagues;
  static const Field<NestedFilterState, List<League>> _f$selectedLeagues =
      Field('selectedLeagues', _$selectedLeagues, opt: true);
  static List<NestedFilterLayoutType>? _$topItems(NestedFilterState v) =>
      v.topItems;
  static const Field<NestedFilterState, List<NestedFilterLayoutType>>
      _f$topItems = Field('topItems', _$topItems, opt: true);
  static List<NestedFilterLayoutType>? _$otherItems(NestedFilterState v) =>
      v.otherItems;
  static const Field<NestedFilterState, List<NestedFilterLayoutType>>
      _f$otherItems = Field('otherItems', _$otherItems, opt: true);
  static List<NestedFilterLayoutType>? _$selectedItems(NestedFilterState v) =>
      v.selectedItems;
  static const Field<NestedFilterState, List<NestedFilterLayoutType>>
      _f$selectedItems = Field('selectedItems', _$selectedItems, opt: true);
  static List<Nation>? _$topNations(NestedFilterState v) => v.topNations;
  static const Field<NestedFilterState, List<Nation>> _f$topNations =
      Field('topNations', _$topNations, opt: true);
  static List<Nation>? _$otherNations(NestedFilterState v) => v.otherNations;
  static const Field<NestedFilterState, List<Nation>> _f$otherNations =
      Field('otherNations', _$otherNations, opt: true);
  static List<Nation>? _$selectedNations(NestedFilterState v) =>
      v.selectedNations;
  static const Field<NestedFilterState, List<Nation>> _f$selectedNations =
      Field('selectedNations', _$selectedNations, opt: true);
  static Map<int, List<Club>?>? _$clubs(NestedFilterState v) => v.clubs;
  static const Field<NestedFilterState, Map<int, List<Club>?>> _f$clubs =
      Field('clubs', _$clubs, opt: true);
  static List<Club>? _$selectedClubs(NestedFilterState v) => v.selectedClubs;
  static const Field<NestedFilterState, List<Club>> _f$selectedClubs =
      Field('selectedClubs', _$selectedClubs, opt: true);

  @override
  final MappableFields<NestedFilterState> fields = const {
    #processState: _f$processState,
    #nestedFilterPageParams: _f$nestedFilterPageParams,
    #topLeagues: _f$topLeagues,
    #otherLeagues: _f$otherLeagues,
    #selectedLeagues: _f$selectedLeagues,
    #topItems: _f$topItems,
    #otherItems: _f$otherItems,
    #selectedItems: _f$selectedItems,
    #topNations: _f$topNations,
    #otherNations: _f$otherNations,
    #selectedNations: _f$selectedNations,
    #clubs: _f$clubs,
    #selectedClubs: _f$selectedClubs,
  };

  static NestedFilterState _instantiate(DecodingData data) {
    return NestedFilterState(
        processState: data.dec(_f$processState),
        nestedFilterPageParams: data.dec(_f$nestedFilterPageParams),
        topLeagues: data.dec(_f$topLeagues),
        otherLeagues: data.dec(_f$otherLeagues),
        selectedLeagues: data.dec(_f$selectedLeagues),
        topItems: data.dec(_f$topItems),
        otherItems: data.dec(_f$otherItems),
        selectedItems: data.dec(_f$selectedItems),
        topNations: data.dec(_f$topNations),
        otherNations: data.dec(_f$otherNations),
        selectedNations: data.dec(_f$selectedNations),
        clubs: data.dec(_f$clubs),
        selectedClubs: data.dec(_f$selectedClubs));
  }

  @override
  final Function instantiate = _instantiate;

  static NestedFilterState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NestedFilterState>(map);
  }

  static NestedFilterState fromJson(String json) {
    return ensureInitialized().decodeJson<NestedFilterState>(json);
  }
}

mixin NestedFilterStateMappable {
  String toJson() {
    return NestedFilterStateMapper.ensureInitialized()
        .encodeJson<NestedFilterState>(this as NestedFilterState);
  }

  Map<String, dynamic> toMap() {
    return NestedFilterStateMapper.ensureInitialized()
        .encodeMap<NestedFilterState>(this as NestedFilterState);
  }

  NestedFilterStateCopyWith<NestedFilterState, NestedFilterState,
          NestedFilterState>
      get copyWith =>
          _NestedFilterStateCopyWithImpl<NestedFilterState, NestedFilterState>(
              this as NestedFilterState, $identity, $identity);
  @override
  String toString() {
    return NestedFilterStateMapper.ensureInitialized()
        .stringifyValue(this as NestedFilterState);
  }

  @override
  bool operator ==(Object other) {
    return NestedFilterStateMapper.ensureInitialized()
        .equalsValue(this as NestedFilterState, other);
  }

  @override
  int get hashCode {
    return NestedFilterStateMapper.ensureInitialized()
        .hashValue(this as NestedFilterState);
  }
}

extension NestedFilterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NestedFilterState, $Out> {
  NestedFilterStateCopyWith<$R, NestedFilterState, $Out>
      get $asNestedFilterState => $base
          .as((v, t, t2) => _NestedFilterStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NestedFilterStateCopyWith<$R, $In extends NestedFilterState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, League, LeagueCopyWith<$R, League, League>>? get topLeagues;
  ListCopyWith<$R, League, LeagueCopyWith<$R, League, League>>?
      get otherLeagues;
  ListCopyWith<$R, League, LeagueCopyWith<$R, League, League>>?
      get selectedLeagues;
  ListCopyWith<
      $R,
      NestedFilterLayoutType,
      NestedFilterLayoutTypeCopyWith<$R, NestedFilterLayoutType,
          NestedFilterLayoutType>>? get topItems;
  ListCopyWith<
      $R,
      NestedFilterLayoutType,
      NestedFilterLayoutTypeCopyWith<$R, NestedFilterLayoutType,
          NestedFilterLayoutType>>? get otherItems;
  ListCopyWith<
      $R,
      NestedFilterLayoutType,
      NestedFilterLayoutTypeCopyWith<$R, NestedFilterLayoutType,
          NestedFilterLayoutType>>? get selectedItems;
  ListCopyWith<$R, Nation, NationCopyWith<$R, Nation, Nation>>? get topNations;
  ListCopyWith<$R, Nation, NationCopyWith<$R, Nation, Nation>>?
      get otherNations;
  ListCopyWith<$R, Nation, NationCopyWith<$R, Nation, Nation>>?
      get selectedNations;
  MapCopyWith<$R, int, List<Club>?,
      ObjectCopyWith<$R, List<Club>?, List<Club>?>?>? get clubs;
  ListCopyWith<$R, Club, ClubCopyWith<$R, Club, Club>>? get selectedClubs;
  $R call(
      {ProcessState? processState,
      NestedFilterPageParams? nestedFilterPageParams,
      List<League>? topLeagues,
      List<League>? otherLeagues,
      List<League>? selectedLeagues,
      List<NestedFilterLayoutType>? topItems,
      List<NestedFilterLayoutType>? otherItems,
      List<NestedFilterLayoutType>? selectedItems,
      List<Nation>? topNations,
      List<Nation>? otherNations,
      List<Nation>? selectedNations,
      Map<int, List<Club>?>? clubs,
      List<Club>? selectedClubs});
  NestedFilterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NestedFilterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NestedFilterState, $Out>
    implements NestedFilterStateCopyWith<$R, NestedFilterState, $Out> {
  _NestedFilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NestedFilterState> $mapper =
      NestedFilterStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, League, LeagueCopyWith<$R, League, League>>?
      get topLeagues => $value.topLeagues != null
          ? ListCopyWith($value.topLeagues!, (v, t) => v.copyWith.$chain(t),
              (v) => call(topLeagues: v))
          : null;
  @override
  ListCopyWith<$R, League, LeagueCopyWith<$R, League, League>>?
      get otherLeagues => $value.otherLeagues != null
          ? ListCopyWith($value.otherLeagues!, (v, t) => v.copyWith.$chain(t),
              (v) => call(otherLeagues: v))
          : null;
  @override
  ListCopyWith<$R, League, LeagueCopyWith<$R, League, League>>?
      get selectedLeagues => $value.selectedLeagues != null
          ? ListCopyWith($value.selectedLeagues!,
              (v, t) => v.copyWith.$chain(t), (v) => call(selectedLeagues: v))
          : null;
  @override
  ListCopyWith<
      $R,
      NestedFilterLayoutType,
      NestedFilterLayoutTypeCopyWith<$R, NestedFilterLayoutType,
          NestedFilterLayoutType>>? get topItems => $value.topItems != null
      ? ListCopyWith($value.topItems!, (v, t) => v.copyWith.$chain(t),
          (v) => call(topItems: v))
      : null;
  @override
  ListCopyWith<
      $R,
      NestedFilterLayoutType,
      NestedFilterLayoutTypeCopyWith<$R, NestedFilterLayoutType,
          NestedFilterLayoutType>>? get otherItems => $value.otherItems != null
      ? ListCopyWith($value.otherItems!, (v, t) => v.copyWith.$chain(t),
          (v) => call(otherItems: v))
      : null;
  @override
  ListCopyWith<
      $R,
      NestedFilterLayoutType,
      NestedFilterLayoutTypeCopyWith<$R, NestedFilterLayoutType,
          NestedFilterLayoutType>>? get selectedItems =>
      $value.selectedItems != null
          ? ListCopyWith($value.selectedItems!, (v, t) => v.copyWith.$chain(t),
              (v) => call(selectedItems: v))
          : null;
  @override
  ListCopyWith<$R, Nation, NationCopyWith<$R, Nation, Nation>>?
      get topNations => $value.topNations != null
          ? ListCopyWith($value.topNations!, (v, t) => v.copyWith.$chain(t),
              (v) => call(topNations: v))
          : null;
  @override
  ListCopyWith<$R, Nation, NationCopyWith<$R, Nation, Nation>>?
      get otherNations => $value.otherNations != null
          ? ListCopyWith($value.otherNations!, (v, t) => v.copyWith.$chain(t),
              (v) => call(otherNations: v))
          : null;
  @override
  ListCopyWith<$R, Nation, NationCopyWith<$R, Nation, Nation>>?
      get selectedNations => $value.selectedNations != null
          ? ListCopyWith($value.selectedNations!,
              (v, t) => v.copyWith.$chain(t), (v) => call(selectedNations: v))
          : null;
  @override
  MapCopyWith<$R, int, List<Club>?,
          ObjectCopyWith<$R, List<Club>?, List<Club>?>?>?
      get clubs => $value.clubs != null
          ? MapCopyWith($value.clubs!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(clubs: v))
          : null;
  @override
  ListCopyWith<$R, Club, ClubCopyWith<$R, Club, Club>>? get selectedClubs =>
      $value.selectedClubs != null
          ? ListCopyWith($value.selectedClubs!, (v, t) => v.copyWith.$chain(t),
              (v) => call(selectedClubs: v))
          : null;
  @override
  $R call(
          {ProcessState? processState,
          Object? nestedFilterPageParams = $none,
          Object? topLeagues = $none,
          Object? otherLeagues = $none,
          Object? selectedLeagues = $none,
          Object? topItems = $none,
          Object? otherItems = $none,
          Object? selectedItems = $none,
          Object? topNations = $none,
          Object? otherNations = $none,
          Object? selectedNations = $none,
          Object? clubs = $none,
          Object? selectedClubs = $none}) =>
      $apply(FieldCopyWithData({
        if (processState != null) #processState: processState,
        if (nestedFilterPageParams != $none)
          #nestedFilterPageParams: nestedFilterPageParams,
        if (topLeagues != $none) #topLeagues: topLeagues,
        if (otherLeagues != $none) #otherLeagues: otherLeagues,
        if (selectedLeagues != $none) #selectedLeagues: selectedLeagues,
        if (topItems != $none) #topItems: topItems,
        if (otherItems != $none) #otherItems: otherItems,
        if (selectedItems != $none) #selectedItems: selectedItems,
        if (topNations != $none) #topNations: topNations,
        if (otherNations != $none) #otherNations: otherNations,
        if (selectedNations != $none) #selectedNations: selectedNations,
        if (clubs != $none) #clubs: clubs,
        if (selectedClubs != $none) #selectedClubs: selectedClubs
      }));
  @override
  NestedFilterState $make(CopyWithData data) => NestedFilterState(
      processState: data.get(#processState, or: $value.processState),
      nestedFilterPageParams:
          data.get(#nestedFilterPageParams, or: $value.nestedFilterPageParams),
      topLeagues: data.get(#topLeagues, or: $value.topLeagues),
      otherLeagues: data.get(#otherLeagues, or: $value.otherLeagues),
      selectedLeagues: data.get(#selectedLeagues, or: $value.selectedLeagues),
      topItems: data.get(#topItems, or: $value.topItems),
      otherItems: data.get(#otherItems, or: $value.otherItems),
      selectedItems: data.get(#selectedItems, or: $value.selectedItems),
      topNations: data.get(#topNations, or: $value.topNations),
      otherNations: data.get(#otherNations, or: $value.otherNations),
      selectedNations: data.get(#selectedNations, or: $value.selectedNations),
      clubs: data.get(#clubs, or: $value.clubs),
      selectedClubs: data.get(#selectedClubs, or: $value.selectedClubs));

  @override
  NestedFilterStateCopyWith<$R2, NestedFilterState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NestedFilterStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
