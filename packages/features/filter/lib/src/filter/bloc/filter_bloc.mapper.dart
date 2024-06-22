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
      TapLeagueMapper.ensureInitialized();
      TapClubMapper.ensureInitialized();
      TapNationMapper.ensureInitialized();
      TapRarityMapper.ensureInitialized();
      TapGenderMapper.ensureInitialized();
      TapFootMapper.ensureInitialized();
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

  @override
  final MappableFields<FilterState> fields = const {
    #leagues: _f$leagues,
    #nations: _f$nations,
    #clubs: _f$clubs,
    #rarities: _f$rarities,
    #genders: _f$genders,
    #foots: _f$foots,
    #positions: _f$positions,
  };

  static FilterState _instantiate(DecodingData data) {
    return FilterState(
        leagues: data.dec(_f$leagues),
        nations: data.dec(_f$nations),
        clubs: data.dec(_f$clubs),
        rarities: data.dec(_f$rarities),
        genders: data.dec(_f$genders),
        foots: data.dec(_f$foots),
        positions: data.dec(_f$positions));
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
  ListCopyWith<$R, Position, ObjectCopyWith<$R, Position, Position>>?
      get positions;
  $R call(
      {List<NestedFilterLayoutType>? leagues,
      List<NestedFilterLayoutType>? nations,
      List<Club>? clubs,
      List<Rarity>? rarities,
      List<Gender>? genders,
      List<Foot>? foots,
      List<Position>? positions});
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
  ListCopyWith<$R, Position, ObjectCopyWith<$R, Position, Position>>?
      get positions => $value.positions != null
          ? ListCopyWith(
              $value.positions!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(positions: v))
          : null;
  @override
  $R call(
          {Object? leagues = $none,
          Object? nations = $none,
          Object? clubs = $none,
          Object? rarities = $none,
          Object? genders = $none,
          Object? foots = $none,
          Object? positions = $none}) =>
      $apply(FieldCopyWithData({
        if (leagues != $none) #leagues: leagues,
        if (nations != $none) #nations: nations,
        if (clubs != $none) #clubs: clubs,
        if (rarities != $none) #rarities: rarities,
        if (genders != $none) #genders: genders,
        if (foots != $none) #foots: foots,
        if (positions != $none) #positions: positions
      }));
  @override
  FilterState $make(CopyWithData data) => FilterState(
      leagues: data.get(#leagues, or: $value.leagues),
      nations: data.get(#nations, or: $value.nations),
      clubs: data.get(#clubs, or: $value.clubs),
      rarities: data.get(#rarities, or: $value.rarities),
      genders: data.get(#genders, or: $value.genders),
      foots: data.get(#foots, or: $value.foots),
      positions: data.get(#positions, or: $value.positions));

  @override
  FilterStateCopyWith<$R2, FilterState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FilterStateCopyWithImpl($value, $cast, t);
}
