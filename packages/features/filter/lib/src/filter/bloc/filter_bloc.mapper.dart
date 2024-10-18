// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'filter_bloc.dart';

class FilterEventMapper extends ClassMapperBase<FilterEvent> {
  FilterEventMapper._();

  static FilterEventMapper? _instance;
  static FilterEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterEventMapper._());
      InitMapper.ensureInitialized();
      TapLeagueMapper.ensureInitialized();
      TapClubMapper.ensureInitialized();
      TapNationMapper.ensureInitialized();
      TapRarityMapper.ensureInitialized();
      TapRoleMapper.ensureInitialized();
      ChangeOverallRatingMapper.ensureInitialized();
      TapGenderMapper.ensureInitialized();
      TapFootMapper.ensureInitialized();
      TapPositionGroupMapper.ensureInitialized();
      TapPositionMapper.ensureInitialized();
      ApplyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FilterEvent';

  @override
  final MappableFields<FilterEvent> fields = const {};

  static FilterEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'FilterEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static FilterEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FilterEvent>(map);
  }

  static FilterEvent fromJson(String json) {
    return ensureInitialized().decodeJson<FilterEvent>(json);
  }
}

mixin FilterEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  FilterEventCopyWith<FilterEvent, FilterEvent, FilterEvent> get copyWith;
}

abstract class FilterEventCopyWith<$R, $In extends FilterEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  FilterEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
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
      FilterEventMapper.ensureInitialized();

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
    implements FilterEventCopyWith<$R, $In, $Out> {
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

class TapLeagueMapper extends SubClassMapperBase<TapLeague> {
  TapLeagueMapper._();

  static TapLeagueMapper? _instance;
  static TapLeagueMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TapLeagueMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TapLeague';

  @override
  final MappableFields<TapLeague> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'tapLeague';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static TapLeague _instantiate(DecodingData data) {
    return TapLeague();
  }

  @override
  final Function instantiate = _instantiate;

  static TapLeague fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TapLeague>(map);
  }

  static TapLeague fromJson(String json) {
    return ensureInitialized().decodeJson<TapLeague>(json);
  }
}

mixin TapLeagueMappable {
  String toJson() {
    return TapLeagueMapper.ensureInitialized()
        .encodeJson<TapLeague>(this as TapLeague);
  }

  Map<String, dynamic> toMap() {
    return TapLeagueMapper.ensureInitialized()
        .encodeMap<TapLeague>(this as TapLeague);
  }

  TapLeagueCopyWith<TapLeague, TapLeague, TapLeague> get copyWith =>
      _TapLeagueCopyWithImpl(this as TapLeague, $identity, $identity);
  @override
  String toString() {
    return TapLeagueMapper.ensureInitialized()
        .stringifyValue(this as TapLeague);
  }

  @override
  bool operator ==(Object other) {
    return TapLeagueMapper.ensureInitialized()
        .equalsValue(this as TapLeague, other);
  }

  @override
  int get hashCode {
    return TapLeagueMapper.ensureInitialized().hashValue(this as TapLeague);
  }
}

extension TapLeagueValueCopy<$R, $Out> on ObjectCopyWith<$R, TapLeague, $Out> {
  TapLeagueCopyWith<$R, TapLeague, $Out> get $asTapLeague =>
      $base.as((v, t, t2) => _TapLeagueCopyWithImpl(v, t, t2));
}

abstract class TapLeagueCopyWith<$R, $In extends TapLeague, $Out>
    implements FilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  TapLeagueCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TapLeagueCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TapLeague, $Out>
    implements TapLeagueCopyWith<$R, TapLeague, $Out> {
  _TapLeagueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TapLeague> $mapper =
      TapLeagueMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  TapLeague $make(CopyWithData data) => TapLeague();

  @override
  TapLeagueCopyWith<$R2, TapLeague, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TapLeagueCopyWithImpl($value, $cast, t);
}

class TapClubMapper extends SubClassMapperBase<TapClub> {
  TapClubMapper._();

  static TapClubMapper? _instance;
  static TapClubMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TapClubMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TapClub';

  @override
  final MappableFields<TapClub> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'tapClub';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static TapClub _instantiate(DecodingData data) {
    return TapClub();
  }

  @override
  final Function instantiate = _instantiate;

  static TapClub fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TapClub>(map);
  }

  static TapClub fromJson(String json) {
    return ensureInitialized().decodeJson<TapClub>(json);
  }
}

mixin TapClubMappable {
  String toJson() {
    return TapClubMapper.ensureInitialized()
        .encodeJson<TapClub>(this as TapClub);
  }

  Map<String, dynamic> toMap() {
    return TapClubMapper.ensureInitialized()
        .encodeMap<TapClub>(this as TapClub);
  }

  TapClubCopyWith<TapClub, TapClub, TapClub> get copyWith =>
      _TapClubCopyWithImpl(this as TapClub, $identity, $identity);
  @override
  String toString() {
    return TapClubMapper.ensureInitialized().stringifyValue(this as TapClub);
  }

  @override
  bool operator ==(Object other) {
    return TapClubMapper.ensureInitialized()
        .equalsValue(this as TapClub, other);
  }

  @override
  int get hashCode {
    return TapClubMapper.ensureInitialized().hashValue(this as TapClub);
  }
}

extension TapClubValueCopy<$R, $Out> on ObjectCopyWith<$R, TapClub, $Out> {
  TapClubCopyWith<$R, TapClub, $Out> get $asTapClub =>
      $base.as((v, t, t2) => _TapClubCopyWithImpl(v, t, t2));
}

abstract class TapClubCopyWith<$R, $In extends TapClub, $Out>
    implements FilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  TapClubCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TapClubCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TapClub, $Out>
    implements TapClubCopyWith<$R, TapClub, $Out> {
  _TapClubCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TapClub> $mapper =
      TapClubMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  TapClub $make(CopyWithData data) => TapClub();

  @override
  TapClubCopyWith<$R2, TapClub, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TapClubCopyWithImpl($value, $cast, t);
}

class TapNationMapper extends SubClassMapperBase<TapNation> {
  TapNationMapper._();

  static TapNationMapper? _instance;
  static TapNationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TapNationMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TapNation';

  @override
  final MappableFields<TapNation> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'tapNation';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static TapNation _instantiate(DecodingData data) {
    return TapNation();
  }

  @override
  final Function instantiate = _instantiate;

  static TapNation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TapNation>(map);
  }

  static TapNation fromJson(String json) {
    return ensureInitialized().decodeJson<TapNation>(json);
  }
}

mixin TapNationMappable {
  String toJson() {
    return TapNationMapper.ensureInitialized()
        .encodeJson<TapNation>(this as TapNation);
  }

  Map<String, dynamic> toMap() {
    return TapNationMapper.ensureInitialized()
        .encodeMap<TapNation>(this as TapNation);
  }

  TapNationCopyWith<TapNation, TapNation, TapNation> get copyWith =>
      _TapNationCopyWithImpl(this as TapNation, $identity, $identity);
  @override
  String toString() {
    return TapNationMapper.ensureInitialized()
        .stringifyValue(this as TapNation);
  }

  @override
  bool operator ==(Object other) {
    return TapNationMapper.ensureInitialized()
        .equalsValue(this as TapNation, other);
  }

  @override
  int get hashCode {
    return TapNationMapper.ensureInitialized().hashValue(this as TapNation);
  }
}

extension TapNationValueCopy<$R, $Out> on ObjectCopyWith<$R, TapNation, $Out> {
  TapNationCopyWith<$R, TapNation, $Out> get $asTapNation =>
      $base.as((v, t, t2) => _TapNationCopyWithImpl(v, t, t2));
}

abstract class TapNationCopyWith<$R, $In extends TapNation, $Out>
    implements FilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  TapNationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TapNationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TapNation, $Out>
    implements TapNationCopyWith<$R, TapNation, $Out> {
  _TapNationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TapNation> $mapper =
      TapNationMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  TapNation $make(CopyWithData data) => TapNation();

  @override
  TapNationCopyWith<$R2, TapNation, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TapNationCopyWithImpl($value, $cast, t);
}

class TapRarityMapper extends SubClassMapperBase<TapRarity> {
  TapRarityMapper._();

  static TapRarityMapper? _instance;
  static TapRarityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TapRarityMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TapRarity';

  @override
  final MappableFields<TapRarity> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'tapRarity';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static TapRarity _instantiate(DecodingData data) {
    return TapRarity();
  }

  @override
  final Function instantiate = _instantiate;

  static TapRarity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TapRarity>(map);
  }

  static TapRarity fromJson(String json) {
    return ensureInitialized().decodeJson<TapRarity>(json);
  }
}

mixin TapRarityMappable {
  String toJson() {
    return TapRarityMapper.ensureInitialized()
        .encodeJson<TapRarity>(this as TapRarity);
  }

  Map<String, dynamic> toMap() {
    return TapRarityMapper.ensureInitialized()
        .encodeMap<TapRarity>(this as TapRarity);
  }

  TapRarityCopyWith<TapRarity, TapRarity, TapRarity> get copyWith =>
      _TapRarityCopyWithImpl(this as TapRarity, $identity, $identity);
  @override
  String toString() {
    return TapRarityMapper.ensureInitialized()
        .stringifyValue(this as TapRarity);
  }

  @override
  bool operator ==(Object other) {
    return TapRarityMapper.ensureInitialized()
        .equalsValue(this as TapRarity, other);
  }

  @override
  int get hashCode {
    return TapRarityMapper.ensureInitialized().hashValue(this as TapRarity);
  }
}

extension TapRarityValueCopy<$R, $Out> on ObjectCopyWith<$R, TapRarity, $Out> {
  TapRarityCopyWith<$R, TapRarity, $Out> get $asTapRarity =>
      $base.as((v, t, t2) => _TapRarityCopyWithImpl(v, t, t2));
}

abstract class TapRarityCopyWith<$R, $In extends TapRarity, $Out>
    implements FilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  TapRarityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TapRarityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TapRarity, $Out>
    implements TapRarityCopyWith<$R, TapRarity, $Out> {
  _TapRarityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TapRarity> $mapper =
      TapRarityMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  TapRarity $make(CopyWithData data) => TapRarity();

  @override
  TapRarityCopyWith<$R2, TapRarity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TapRarityCopyWithImpl($value, $cast, t);
}

class TapRoleMapper extends SubClassMapperBase<TapRole> {
  TapRoleMapper._();

  static TapRoleMapper? _instance;
  static TapRoleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TapRoleMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TapRole';

  @override
  final MappableFields<TapRole> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'tapRarity';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static TapRole _instantiate(DecodingData data) {
    return TapRole();
  }

  @override
  final Function instantiate = _instantiate;

  static TapRole fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TapRole>(map);
  }

  static TapRole fromJson(String json) {
    return ensureInitialized().decodeJson<TapRole>(json);
  }
}

mixin TapRoleMappable {
  String toJson() {
    return TapRoleMapper.ensureInitialized()
        .encodeJson<TapRole>(this as TapRole);
  }

  Map<String, dynamic> toMap() {
    return TapRoleMapper.ensureInitialized()
        .encodeMap<TapRole>(this as TapRole);
  }

  TapRoleCopyWith<TapRole, TapRole, TapRole> get copyWith =>
      _TapRoleCopyWithImpl(this as TapRole, $identity, $identity);
  @override
  String toString() {
    return TapRoleMapper.ensureInitialized().stringifyValue(this as TapRole);
  }

  @override
  bool operator ==(Object other) {
    return TapRoleMapper.ensureInitialized()
        .equalsValue(this as TapRole, other);
  }

  @override
  int get hashCode {
    return TapRoleMapper.ensureInitialized().hashValue(this as TapRole);
  }
}

extension TapRoleValueCopy<$R, $Out> on ObjectCopyWith<$R, TapRole, $Out> {
  TapRoleCopyWith<$R, TapRole, $Out> get $asTapRole =>
      $base.as((v, t, t2) => _TapRoleCopyWithImpl(v, t, t2));
}

abstract class TapRoleCopyWith<$R, $In extends TapRole, $Out>
    implements FilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  TapRoleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TapRoleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TapRole, $Out>
    implements TapRoleCopyWith<$R, TapRole, $Out> {
  _TapRoleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TapRole> $mapper =
      TapRoleMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  TapRole $make(CopyWithData data) => TapRole();

  @override
  TapRoleCopyWith<$R2, TapRole, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TapRoleCopyWithImpl($value, $cast, t);
}

class ChangeOverallRatingMapper
    extends SubClassMapperBase<ChangeOverallRating> {
  ChangeOverallRatingMapper._();

  static ChangeOverallRatingMapper? _instance;
  static ChangeOverallRatingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChangeOverallRatingMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ChangeOverallRating';

  static RangeValues _$overallRatingRange(ChangeOverallRating v) =>
      v.overallRatingRange;
  static const Field<ChangeOverallRating, RangeValues> _f$overallRatingRange =
      Field('overallRatingRange', _$overallRatingRange);

  @override
  final MappableFields<ChangeOverallRating> fields = const {
    #overallRatingRange: _f$overallRatingRange,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'changeOverallRating';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static ChangeOverallRating _instantiate(DecodingData data) {
    return ChangeOverallRating(
        overallRatingRange: data.dec(_f$overallRatingRange));
  }

  @override
  final Function instantiate = _instantiate;

  static ChangeOverallRating fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChangeOverallRating>(map);
  }

  static ChangeOverallRating fromJson(String json) {
    return ensureInitialized().decodeJson<ChangeOverallRating>(json);
  }
}

mixin ChangeOverallRatingMappable {
  String toJson() {
    return ChangeOverallRatingMapper.ensureInitialized()
        .encodeJson<ChangeOverallRating>(this as ChangeOverallRating);
  }

  Map<String, dynamic> toMap() {
    return ChangeOverallRatingMapper.ensureInitialized()
        .encodeMap<ChangeOverallRating>(this as ChangeOverallRating);
  }

  ChangeOverallRatingCopyWith<ChangeOverallRating, ChangeOverallRating,
          ChangeOverallRating>
      get copyWith => _ChangeOverallRatingCopyWithImpl(
          this as ChangeOverallRating, $identity, $identity);
  @override
  String toString() {
    return ChangeOverallRatingMapper.ensureInitialized()
        .stringifyValue(this as ChangeOverallRating);
  }

  @override
  bool operator ==(Object other) {
    return ChangeOverallRatingMapper.ensureInitialized()
        .equalsValue(this as ChangeOverallRating, other);
  }

  @override
  int get hashCode {
    return ChangeOverallRatingMapper.ensureInitialized()
        .hashValue(this as ChangeOverallRating);
  }
}

extension ChangeOverallRatingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChangeOverallRating, $Out> {
  ChangeOverallRatingCopyWith<$R, ChangeOverallRating, $Out>
      get $asChangeOverallRating =>
          $base.as((v, t, t2) => _ChangeOverallRatingCopyWithImpl(v, t, t2));
}

abstract class ChangeOverallRatingCopyWith<$R, $In extends ChangeOverallRating,
    $Out> implements FilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call({RangeValues? overallRatingRange});
  ChangeOverallRatingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChangeOverallRatingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChangeOverallRating, $Out>
    implements ChangeOverallRatingCopyWith<$R, ChangeOverallRating, $Out> {
  _ChangeOverallRatingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChangeOverallRating> $mapper =
      ChangeOverallRatingMapper.ensureInitialized();
  @override
  $R call({RangeValues? overallRatingRange}) => $apply(FieldCopyWithData({
        if (overallRatingRange != null) #overallRatingRange: overallRatingRange
      }));
  @override
  ChangeOverallRating $make(CopyWithData data) => ChangeOverallRating(
      overallRatingRange:
          data.get(#overallRatingRange, or: $value.overallRatingRange));

  @override
  ChangeOverallRatingCopyWith<$R2, ChangeOverallRating, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ChangeOverallRatingCopyWithImpl($value, $cast, t);
}

class TapGenderMapper extends SubClassMapperBase<TapGender> {
  TapGenderMapper._();

  static TapGenderMapper? _instance;
  static TapGenderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TapGenderMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
      GenderMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TapGender';

  static Gender _$gender(TapGender v) => v.gender;
  static const Field<TapGender, Gender> _f$gender = Field('gender', _$gender);

  @override
  final MappableFields<TapGender> fields = const {
    #gender: _f$gender,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'tapGender';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static TapGender _instantiate(DecodingData data) {
    return TapGender(gender: data.dec(_f$gender));
  }

  @override
  final Function instantiate = _instantiate;

  static TapGender fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TapGender>(map);
  }

  static TapGender fromJson(String json) {
    return ensureInitialized().decodeJson<TapGender>(json);
  }
}

mixin TapGenderMappable {
  String toJson() {
    return TapGenderMapper.ensureInitialized()
        .encodeJson<TapGender>(this as TapGender);
  }

  Map<String, dynamic> toMap() {
    return TapGenderMapper.ensureInitialized()
        .encodeMap<TapGender>(this as TapGender);
  }

  TapGenderCopyWith<TapGender, TapGender, TapGender> get copyWith =>
      _TapGenderCopyWithImpl(this as TapGender, $identity, $identity);
  @override
  String toString() {
    return TapGenderMapper.ensureInitialized()
        .stringifyValue(this as TapGender);
  }

  @override
  bool operator ==(Object other) {
    return TapGenderMapper.ensureInitialized()
        .equalsValue(this as TapGender, other);
  }

  @override
  int get hashCode {
    return TapGenderMapper.ensureInitialized().hashValue(this as TapGender);
  }
}

extension TapGenderValueCopy<$R, $Out> on ObjectCopyWith<$R, TapGender, $Out> {
  TapGenderCopyWith<$R, TapGender, $Out> get $asTapGender =>
      $base.as((v, t, t2) => _TapGenderCopyWithImpl(v, t, t2));
}

abstract class TapGenderCopyWith<$R, $In extends TapGender, $Out>
    implements FilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call({Gender? gender});
  TapGenderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TapGenderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TapGender, $Out>
    implements TapGenderCopyWith<$R, TapGender, $Out> {
  _TapGenderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TapGender> $mapper =
      TapGenderMapper.ensureInitialized();
  @override
  $R call({Gender? gender}) =>
      $apply(FieldCopyWithData({if (gender != null) #gender: gender}));
  @override
  TapGender $make(CopyWithData data) =>
      TapGender(gender: data.get(#gender, or: $value.gender));

  @override
  TapGenderCopyWith<$R2, TapGender, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TapGenderCopyWithImpl($value, $cast, t);
}

class TapFootMapper extends SubClassMapperBase<TapFoot> {
  TapFootMapper._();

  static TapFootMapper? _instance;
  static TapFootMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TapFootMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
      FootMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TapFoot';

  static Foot _$foot(TapFoot v) => v.foot;
  static const Field<TapFoot, Foot> _f$foot = Field('foot', _$foot);

  @override
  final MappableFields<TapFoot> fields = const {
    #foot: _f$foot,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'tapFoot';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static TapFoot _instantiate(DecodingData data) {
    return TapFoot(foot: data.dec(_f$foot));
  }

  @override
  final Function instantiate = _instantiate;

  static TapFoot fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TapFoot>(map);
  }

  static TapFoot fromJson(String json) {
    return ensureInitialized().decodeJson<TapFoot>(json);
  }
}

mixin TapFootMappable {
  String toJson() {
    return TapFootMapper.ensureInitialized()
        .encodeJson<TapFoot>(this as TapFoot);
  }

  Map<String, dynamic> toMap() {
    return TapFootMapper.ensureInitialized()
        .encodeMap<TapFoot>(this as TapFoot);
  }

  TapFootCopyWith<TapFoot, TapFoot, TapFoot> get copyWith =>
      _TapFootCopyWithImpl(this as TapFoot, $identity, $identity);
  @override
  String toString() {
    return TapFootMapper.ensureInitialized().stringifyValue(this as TapFoot);
  }

  @override
  bool operator ==(Object other) {
    return TapFootMapper.ensureInitialized()
        .equalsValue(this as TapFoot, other);
  }

  @override
  int get hashCode {
    return TapFootMapper.ensureInitialized().hashValue(this as TapFoot);
  }
}

extension TapFootValueCopy<$R, $Out> on ObjectCopyWith<$R, TapFoot, $Out> {
  TapFootCopyWith<$R, TapFoot, $Out> get $asTapFoot =>
      $base.as((v, t, t2) => _TapFootCopyWithImpl(v, t, t2));
}

abstract class TapFootCopyWith<$R, $In extends TapFoot, $Out>
    implements FilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call({Foot? foot});
  TapFootCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TapFootCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TapFoot, $Out>
    implements TapFootCopyWith<$R, TapFoot, $Out> {
  _TapFootCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TapFoot> $mapper =
      TapFootMapper.ensureInitialized();
  @override
  $R call({Foot? foot}) =>
      $apply(FieldCopyWithData({if (foot != null) #foot: foot}));
  @override
  TapFoot $make(CopyWithData data) =>
      TapFoot(foot: data.get(#foot, or: $value.foot));

  @override
  TapFootCopyWith<$R2, TapFoot, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TapFootCopyWithImpl($value, $cast, t);
}

class TapPositionGroupMapper extends SubClassMapperBase<TapPositionGroup> {
  TapPositionGroupMapper._();

  static TapPositionGroupMapper? _instance;
  static TapPositionGroupMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TapPositionGroupMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
      PositionMapper.ensureInitialized();
      PositionGroupMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TapPositionGroup';

  static List<Position> _$allPositions(TapPositionGroup v) => v.allPositions;
  static const Field<TapPositionGroup, List<Position>> _f$allPositions =
      Field('allPositions', _$allPositions);
  static PositionGroup _$positionGroup(TapPositionGroup v) => v.positionGroup;
  static const Field<TapPositionGroup, PositionGroup> _f$positionGroup =
      Field('positionGroup', _$positionGroup);

  @override
  final MappableFields<TapPositionGroup> fields = const {
    #allPositions: _f$allPositions,
    #positionGroup: _f$positionGroup,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'tapPositionGroup';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static TapPositionGroup _instantiate(DecodingData data) {
    return TapPositionGroup(
        allPositions: data.dec(_f$allPositions),
        positionGroup: data.dec(_f$positionGroup));
  }

  @override
  final Function instantiate = _instantiate;

  static TapPositionGroup fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TapPositionGroup>(map);
  }

  static TapPositionGroup fromJson(String json) {
    return ensureInitialized().decodeJson<TapPositionGroup>(json);
  }
}

mixin TapPositionGroupMappable {
  String toJson() {
    return TapPositionGroupMapper.ensureInitialized()
        .encodeJson<TapPositionGroup>(this as TapPositionGroup);
  }

  Map<String, dynamic> toMap() {
    return TapPositionGroupMapper.ensureInitialized()
        .encodeMap<TapPositionGroup>(this as TapPositionGroup);
  }

  TapPositionGroupCopyWith<TapPositionGroup, TapPositionGroup, TapPositionGroup>
      get copyWith => _TapPositionGroupCopyWithImpl(
          this as TapPositionGroup, $identity, $identity);
  @override
  String toString() {
    return TapPositionGroupMapper.ensureInitialized()
        .stringifyValue(this as TapPositionGroup);
  }

  @override
  bool operator ==(Object other) {
    return TapPositionGroupMapper.ensureInitialized()
        .equalsValue(this as TapPositionGroup, other);
  }

  @override
  int get hashCode {
    return TapPositionGroupMapper.ensureInitialized()
        .hashValue(this as TapPositionGroup);
  }
}

extension TapPositionGroupValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TapPositionGroup, $Out> {
  TapPositionGroupCopyWith<$R, TapPositionGroup, $Out>
      get $asTapPositionGroup =>
          $base.as((v, t, t2) => _TapPositionGroupCopyWithImpl(v, t, t2));
}

abstract class TapPositionGroupCopyWith<$R, $In extends TapPositionGroup, $Out>
    implements FilterEventCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Position, PositionCopyWith<$R, Position, Position>>
      get allPositions;
  @override
  $R call({List<Position>? allPositions, PositionGroup? positionGroup});
  TapPositionGroupCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TapPositionGroupCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TapPositionGroup, $Out>
    implements TapPositionGroupCopyWith<$R, TapPositionGroup, $Out> {
  _TapPositionGroupCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TapPositionGroup> $mapper =
      TapPositionGroupMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Position, PositionCopyWith<$R, Position, Position>>
      get allPositions => ListCopyWith($value.allPositions,
          (v, t) => v.copyWith.$chain(t), (v) => call(allPositions: v));
  @override
  $R call({List<Position>? allPositions, PositionGroup? positionGroup}) =>
      $apply(FieldCopyWithData({
        if (allPositions != null) #allPositions: allPositions,
        if (positionGroup != null) #positionGroup: positionGroup
      }));
  @override
  TapPositionGroup $make(CopyWithData data) => TapPositionGroup(
      allPositions: data.get(#allPositions, or: $value.allPositions),
      positionGroup: data.get(#positionGroup, or: $value.positionGroup));

  @override
  TapPositionGroupCopyWith<$R2, TapPositionGroup, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TapPositionGroupCopyWithImpl($value, $cast, t);
}

class TapPositionMapper extends SubClassMapperBase<TapPosition> {
  TapPositionMapper._();

  static TapPositionMapper? _instance;
  static TapPositionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TapPositionMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
      PositionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TapPosition';

  static Position _$position(TapPosition v) => v.position;
  static const Field<TapPosition, Position> _f$position =
      Field('position', _$position);

  @override
  final MappableFields<TapPosition> fields = const {
    #position: _f$position,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'tapPosition';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static TapPosition _instantiate(DecodingData data) {
    return TapPosition(position: data.dec(_f$position));
  }

  @override
  final Function instantiate = _instantiate;

  static TapPosition fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TapPosition>(map);
  }

  static TapPosition fromJson(String json) {
    return ensureInitialized().decodeJson<TapPosition>(json);
  }
}

mixin TapPositionMappable {
  String toJson() {
    return TapPositionMapper.ensureInitialized()
        .encodeJson<TapPosition>(this as TapPosition);
  }

  Map<String, dynamic> toMap() {
    return TapPositionMapper.ensureInitialized()
        .encodeMap<TapPosition>(this as TapPosition);
  }

  TapPositionCopyWith<TapPosition, TapPosition, TapPosition> get copyWith =>
      _TapPositionCopyWithImpl(this as TapPosition, $identity, $identity);
  @override
  String toString() {
    return TapPositionMapper.ensureInitialized()
        .stringifyValue(this as TapPosition);
  }

  @override
  bool operator ==(Object other) {
    return TapPositionMapper.ensureInitialized()
        .equalsValue(this as TapPosition, other);
  }

  @override
  int get hashCode {
    return TapPositionMapper.ensureInitialized().hashValue(this as TapPosition);
  }
}

extension TapPositionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TapPosition, $Out> {
  TapPositionCopyWith<$R, TapPosition, $Out> get $asTapPosition =>
      $base.as((v, t, t2) => _TapPositionCopyWithImpl(v, t, t2));
}

abstract class TapPositionCopyWith<$R, $In extends TapPosition, $Out>
    implements FilterEventCopyWith<$R, $In, $Out> {
  PositionCopyWith<$R, Position, Position> get position;
  @override
  $R call({Position? position});
  TapPositionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TapPositionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TapPosition, $Out>
    implements TapPositionCopyWith<$R, TapPosition, $Out> {
  _TapPositionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TapPosition> $mapper =
      TapPositionMapper.ensureInitialized();
  @override
  PositionCopyWith<$R, Position, Position> get position =>
      $value.position.copyWith.$chain((v) => call(position: v));
  @override
  $R call({Position? position}) =>
      $apply(FieldCopyWithData({if (position != null) #position: position}));
  @override
  TapPosition $make(CopyWithData data) =>
      TapPosition(position: data.get(#position, or: $value.position));

  @override
  TapPositionCopyWith<$R2, TapPosition, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TapPositionCopyWithImpl($value, $cast, t);
}

class ApplyMapper extends SubClassMapperBase<Apply> {
  ApplyMapper._();

  static ApplyMapper? _instance;
  static ApplyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApplyMapper._());
      FilterEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Apply';

  @override
  final MappableFields<Apply> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'apply';
  @override
  late final ClassMapperBase superMapper =
      FilterEventMapper.ensureInitialized();

  static Apply _instantiate(DecodingData data) {
    return Apply();
  }

  @override
  final Function instantiate = _instantiate;

  static Apply fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Apply>(map);
  }

  static Apply fromJson(String json) {
    return ensureInitialized().decodeJson<Apply>(json);
  }
}

mixin ApplyMappable {
  String toJson() {
    return ApplyMapper.ensureInitialized().encodeJson<Apply>(this as Apply);
  }

  Map<String, dynamic> toMap() {
    return ApplyMapper.ensureInitialized().encodeMap<Apply>(this as Apply);
  }

  ApplyCopyWith<Apply, Apply, Apply> get copyWith =>
      _ApplyCopyWithImpl(this as Apply, $identity, $identity);
  @override
  String toString() {
    return ApplyMapper.ensureInitialized().stringifyValue(this as Apply);
  }

  @override
  bool operator ==(Object other) {
    return ApplyMapper.ensureInitialized().equalsValue(this as Apply, other);
  }

  @override
  int get hashCode {
    return ApplyMapper.ensureInitialized().hashValue(this as Apply);
  }
}

extension ApplyValueCopy<$R, $Out> on ObjectCopyWith<$R, Apply, $Out> {
  ApplyCopyWith<$R, Apply, $Out> get $asApply =>
      $base.as((v, t, t2) => _ApplyCopyWithImpl(v, t, t2));
}

abstract class ApplyCopyWith<$R, $In extends Apply, $Out>
    implements FilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  ApplyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ApplyCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Apply, $Out>
    implements ApplyCopyWith<$R, Apply, $Out> {
  _ApplyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Apply> $mapper = ApplyMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Apply $make(CopyWithData data) => Apply();

  @override
  ApplyCopyWith<$R2, Apply, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ApplyCopyWithImpl($value, $cast, t);
}

class FilterStateMapper extends ClassMapperBase<FilterState> {
  FilterStateMapper._();

  static FilterStateMapper? _instance;
  static FilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterStateMapper._());
      NestedFilterLayoutTypeMapper.ensureInitialized();
      ClubMapper.ensureInitialized();
      RarityMapper.ensureInitialized();
      GenderMapper.ensureInitialized();
      FootMapper.ensureInitialized();
      PositionMapper.ensureInitialized();
      PositionGroupMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FilterState';

  static List<NestedFilterLayoutType>? _$leagues(FilterState v) => v.leagues;
  static const Field<FilterState, List<NestedFilterLayoutType>> _f$leagues =
      Field('leagues', _$leagues);
  static List<NestedFilterLayoutType>? _$nations(FilterState v) => v.nations;
  static const Field<FilterState, List<NestedFilterLayoutType>> _f$nations =
      Field('nations', _$nations);
  static List<Club>? _$clubs(FilterState v) => v.clubs;
  static const Field<FilterState, List<Club>> _f$clubs =
      Field('clubs', _$clubs);
  static List<Rarity>? _$rarities(FilterState v) => v.rarities;
  static const Field<FilterState, List<Rarity>> _f$rarities =
      Field('rarities', _$rarities);
  static List<Gender>? _$genders(FilterState v) => v.genders;
  static const Field<FilterState, List<Gender>> _f$genders =
      Field('genders', _$genders);
  static List<Foot>? _$foots(FilterState v) => v.foots;
  static const Field<FilterState, List<Foot>> _f$foots =
      Field('foots', _$foots);
  static List<Position>? _$positions(FilterState v) => v.positions;
  static const Field<FilterState, List<Position>> _f$positions =
      Field('positions', _$positions);
  static List<PositionGroup>? _$positionGroups(FilterState v) =>
      v.positionGroups;
  static const Field<FilterState, List<PositionGroup>> _f$positionGroups =
      Field('positionGroups', _$positionGroups);
  static List<Role>? _$roles(FilterState v) => v.roles;
  static const Field<FilterState, List<Role>> _f$roles =
      Field('roles', _$roles);
  static RangeValues _$overallRatingRange(FilterState v) =>
      v.overallRatingRange;
  static const Field<FilterState, RangeValues> _f$overallRatingRange =
      Field('overallRatingRange', _$overallRatingRange);

  @override
  final MappableFields<FilterState> fields = const {
    #leagues: _f$leagues,
    #nations: _f$nations,
    #clubs: _f$clubs,
    #rarities: _f$rarities,
    #genders: _f$genders,
    #foots: _f$foots,
    #positions: _f$positions,
    #positionGroups: _f$positionGroups,
    #roles: _f$roles,
    #overallRatingRange: _f$overallRatingRange,
  };

  static FilterState _instantiate(DecodingData data) {
    return FilterState(
        leagues: data.dec(_f$leagues),
        nations: data.dec(_f$nations),
        clubs: data.dec(_f$clubs),
        rarities: data.dec(_f$rarities),
        genders: data.dec(_f$genders),
        foots: data.dec(_f$foots),
        positions: data.dec(_f$positions),
        positionGroups: data.dec(_f$positionGroups),
        roles: data.dec(_f$roles),
        overallRatingRange: data.dec(_f$overallRatingRange));
  }

  @override
  final Function instantiate = _instantiate;

  static FilterState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FilterState>(map);
  }

  static FilterState fromJson(String json) {
    return ensureInitialized().decodeJson<FilterState>(json);
  }
}

mixin FilterStateMappable {
  String toJson() {
    return FilterStateMapper.ensureInitialized()
        .encodeJson<FilterState>(this as FilterState);
  }

  Map<String, dynamic> toMap() {
    return FilterStateMapper.ensureInitialized()
        .encodeMap<FilterState>(this as FilterState);
  }

  FilterStateCopyWith<FilterState, FilterState, FilterState> get copyWith =>
      _FilterStateCopyWithImpl(this as FilterState, $identity, $identity);
  @override
  String toString() {
    return FilterStateMapper.ensureInitialized()
        .stringifyValue(this as FilterState);
  }

  @override
  bool operator ==(Object other) {
    return FilterStateMapper.ensureInitialized()
        .equalsValue(this as FilterState, other);
  }

  @override
  int get hashCode {
    return FilterStateMapper.ensureInitialized().hashValue(this as FilterState);
  }
}

extension FilterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FilterState, $Out> {
  FilterStateCopyWith<$R, FilterState, $Out> get $asFilterState =>
      $base.as((v, t, t2) => _FilterStateCopyWithImpl(v, t, t2));
}

abstract class FilterStateCopyWith<$R, $In extends FilterState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, NestedFilterLayoutType,
          ObjectCopyWith<$R, NestedFilterLayoutType, NestedFilterLayoutType>>?
      get leagues;
  ListCopyWith<$R, NestedFilterLayoutType,
          ObjectCopyWith<$R, NestedFilterLayoutType, NestedFilterLayoutType>>?
      get nations;
  ListCopyWith<$R, Club, ClubCopyWith<$R, Club, Club>>? get clubs;
  ListCopyWith<$R, Rarity, RarityCopyWith<$R, Rarity, Rarity>>? get rarities;
  ListCopyWith<$R, Gender, ObjectCopyWith<$R, Gender, Gender>>? get genders;
  ListCopyWith<$R, Foot, ObjectCopyWith<$R, Foot, Foot>>? get foots;
  ListCopyWith<$R, Position, PositionCopyWith<$R, Position, Position>>?
      get positions;
  ListCopyWith<$R, PositionGroup,
      ObjectCopyWith<$R, PositionGroup, PositionGroup>>? get positionGroups;
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get roles;
  $R call(
      {List<NestedFilterLayoutType>? leagues,
      List<NestedFilterLayoutType>? nations,
      List<Club>? clubs,
      List<Rarity>? rarities,
      List<Gender>? genders,
      List<Foot>? foots,
      List<Position>? positions,
      List<PositionGroup>? positionGroups,
      List<Role>? roles,
      RangeValues? overallRatingRange});
  FilterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FilterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FilterState, $Out>
    implements FilterStateCopyWith<$R, FilterState, $Out> {
  _FilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FilterState> $mapper =
      FilterStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, NestedFilterLayoutType,
          ObjectCopyWith<$R, NestedFilterLayoutType, NestedFilterLayoutType>>?
      get leagues => $value.leagues != null
          ? ListCopyWith(
              $value.leagues!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(leagues: v))
          : null;
  @override
  ListCopyWith<$R, NestedFilterLayoutType,
          ObjectCopyWith<$R, NestedFilterLayoutType, NestedFilterLayoutType>>?
      get nations => $value.nations != null
          ? ListCopyWith(
              $value.nations!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(nations: v))
          : null;
  @override
  ListCopyWith<$R, Club, ClubCopyWith<$R, Club, Club>>? get clubs =>
      $value.clubs != null
          ? ListCopyWith($value.clubs!, (v, t) => v.copyWith.$chain(t),
              (v) => call(clubs: v))
          : null;
  @override
  ListCopyWith<$R, Rarity, RarityCopyWith<$R, Rarity, Rarity>>? get rarities =>
      $value.rarities != null
          ? ListCopyWith($value.rarities!, (v, t) => v.copyWith.$chain(t),
              (v) => call(rarities: v))
          : null;
  @override
  ListCopyWith<$R, Gender, ObjectCopyWith<$R, Gender, Gender>>? get genders =>
      $value.genders != null
          ? ListCopyWith(
              $value.genders!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(genders: v))
          : null;
  @override
  ListCopyWith<$R, Foot, ObjectCopyWith<$R, Foot, Foot>>? get foots =>
      $value.foots != null
          ? ListCopyWith($value.foots!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(foots: v))
          : null;
  @override
  ListCopyWith<$R, Position, PositionCopyWith<$R, Position, Position>>?
      get positions => $value.positions != null
          ? ListCopyWith($value.positions!, (v, t) => v.copyWith.$chain(t),
              (v) => call(positions: v))
          : null;
  @override
  ListCopyWith<$R, PositionGroup,
          ObjectCopyWith<$R, PositionGroup, PositionGroup>>?
      get positionGroups => $value.positionGroups != null
          ? ListCopyWith(
              $value.positionGroups!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(positionGroups: v))
          : null;
  @override
  ListCopyWith<$R, Role, RoleCopyWith<$R, Role, Role>>? get roles =>
      $value.roles != null
          ? ListCopyWith($value.roles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(roles: v))
          : null;
  @override
  $R call(
          {Object? leagues = $none,
          Object? nations = $none,
          Object? clubs = $none,
          Object? rarities = $none,
          Object? genders = $none,
          Object? foots = $none,
          Object? positions = $none,
          Object? positionGroups = $none,
          Object? roles = $none,
          RangeValues? overallRatingRange}) =>
      $apply(FieldCopyWithData({
        if (leagues != $none) #leagues: leagues,
        if (nations != $none) #nations: nations,
        if (clubs != $none) #clubs: clubs,
        if (rarities != $none) #rarities: rarities,
        if (genders != $none) #genders: genders,
        if (foots != $none) #foots: foots,
        if (positions != $none) #positions: positions,
        if (positionGroups != $none) #positionGroups: positionGroups,
        if (roles != $none) #roles: roles,
        if (overallRatingRange != null) #overallRatingRange: overallRatingRange
      }));
  @override
  FilterState $make(CopyWithData data) => FilterState(
      leagues: data.get(#leagues, or: $value.leagues),
      nations: data.get(#nations, or: $value.nations),
      clubs: data.get(#clubs, or: $value.clubs),
      rarities: data.get(#rarities, or: $value.rarities),
      genders: data.get(#genders, or: $value.genders),
      foots: data.get(#foots, or: $value.foots),
      positions: data.get(#positions, or: $value.positions),
      positionGroups: data.get(#positionGroups, or: $value.positionGroups),
      roles: data.get(#roles, or: $value.roles),
      overallRatingRange:
          data.get(#overallRatingRange, or: $value.overallRatingRange));

  @override
  FilterStateCopyWith<$R2, FilterState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FilterStateCopyWithImpl($value, $cast, t);
}
