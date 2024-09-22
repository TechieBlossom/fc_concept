// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'league_old.dart';

class LeagueOldMapper extends SubClassMapperBase<LeagueOld> {
  LeagueOldMapper._();

  static LeagueOldMapper? _instance;
  static LeagueOldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LeagueOldMapper._());
      NestedFilterLayoutTypeMapper.ensureInitialized().addSubMapper(_instance!);
      GenderMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LeagueOld';

  static int _$eaId(LeagueOld v) => v.eaId;
  static const Field<LeagueOld, int> _f$eaId = Field('eaId', _$eaId, key: 'id');
  static String _$name(LeagueOld v) => v.name;
  static const Field<LeagueOld, String> _f$name = Field('name', _$name);
  static int? _$nationId(LeagueOld v) => v.nationId;
  static const Field<LeagueOld, int> _f$nationId =
      Field('nationId', _$nationId);
  static Gender? _$gender(LeagueOld v) => v.gender;
  static const Field<LeagueOld, Gender> _f$gender = Field('gender', _$gender);

  @override
  final MappableFields<LeagueOld> fields = const {
    #eaId: _f$eaId,
    #name: _f$name,
    #nationId: _f$nationId,
    #gender: _f$gender,
  };

  @override
  final String discriminatorKey = 'name';
  @override
  final dynamic discriminatorValue = 'league';
  @override
  late final ClassMapperBase superMapper =
      NestedFilterLayoutTypeMapper.ensureInitialized();

  static LeagueOld _instantiate(DecodingData data) {
    return LeagueOld(
        id: data.dec(_f$eaId),
        name: data.dec(_f$name),
        nationId: data.dec(_f$nationId),
        gender: data.dec(_f$gender));
  }

  @override
  final Function instantiate = _instantiate;

  static LeagueOld fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LeagueOld>(map);
  }

  static LeagueOld fromJson(String json) {
    return ensureInitialized().decodeJson<LeagueOld>(json);
  }
}

mixin LeagueOldMappable {
  String toJson() {
    return LeagueOldMapper.ensureInitialized()
        .encodeJson<LeagueOld>(this as LeagueOld);
  }

  Map<String, dynamic> toMap() {
    return LeagueOldMapper.ensureInitialized()
        .encodeMap<LeagueOld>(this as LeagueOld);
  }

  LeagueOldCopyWith<LeagueOld, LeagueOld, LeagueOld> get copyWith =>
      _LeagueOldCopyWithImpl(this as LeagueOld, $identity, $identity);
  @override
  String toString() {
    return LeagueOldMapper.ensureInitialized()
        .stringifyValue(this as LeagueOld);
  }

  @override
  bool operator ==(Object other) {
    return LeagueOldMapper.ensureInitialized()
        .equalsValue(this as LeagueOld, other);
  }

  @override
  int get hashCode {
    return LeagueOldMapper.ensureInitialized().hashValue(this as LeagueOld);
  }
}

extension LeagueOldValueCopy<$R, $Out> on ObjectCopyWith<$R, LeagueOld, $Out> {
  LeagueOldCopyWith<$R, LeagueOld, $Out> get $asLeagueOld =>
      $base.as((v, t, t2) => _LeagueOldCopyWithImpl(v, t, t2));
}

abstract class LeagueOldCopyWith<$R, $In extends LeagueOld, $Out>
    implements NestedFilterLayoutTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({int? eaId, String? name, int? nationId, Gender? gender});
  LeagueOldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LeagueOldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LeagueOld, $Out>
    implements LeagueOldCopyWith<$R, LeagueOld, $Out> {
  _LeagueOldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LeagueOld> $mapper =
      LeagueOldMapper.ensureInitialized();
  @override
  $R call(
          {int? eaId,
          String? name,
          Object? nationId = $none,
          Object? gender = $none}) =>
      $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (name != null) #name: name,
        if (nationId != $none) #nationId: nationId,
        if (gender != $none) #gender: gender
      }));
  @override
  LeagueOld $make(CopyWithData data) => LeagueOld(
      id: data.get(#eaId, or: $value.eaId),
      name: data.get(#name, or: $value.name),
      nationId: data.get(#nationId, or: $value.nationId),
      gender: data.get(#gender, or: $value.gender));

  @override
  LeagueOldCopyWith<$R2, LeagueOld, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LeagueOldCopyWithImpl($value, $cast, t);
}
