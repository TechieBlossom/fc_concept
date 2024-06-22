// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'league.dart';

class LeagueMapper extends SubClassMapperBase<League> {
  LeagueMapper._();

  static LeagueMapper? _instance;
  static LeagueMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LeagueMapper._());
      NestedFilterLayoutTypeMapper.ensureInitialized().addSubMapper(_instance!);
      GenderMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'League';

  static int _$id(League v) => v.id;
  static const Field<League, int> _f$id = Field('id', _$id);
  static String _$name(League v) => v.name;
  static const Field<League, String> _f$name = Field('name', _$name);
  static int? _$nationId(League v) => v.nationId;
  static const Field<League, int> _f$nationId = Field('nationId', _$nationId);
  static Gender? _$gender(League v) => v.gender;
  static const Field<League, Gender> _f$gender = Field('gender', _$gender);

  @override
  final MappableFields<League> fields = const {
    #id: _f$id,
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

  static League _instantiate(DecodingData data) {
    return League(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        nationId: data.dec(_f$nationId),
        gender: data.dec(_f$gender));
  }

  @override
  final Function instantiate = _instantiate;

  static League fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<League>(map);
  }

  static League fromJson(String json) {
    return ensureInitialized().decodeJson<League>(json);
  }
}

mixin LeagueMappable {
  String toJson() {
    return LeagueMapper.ensureInitialized().encodeJson<League>(this as League);
  }

  Map<String, dynamic> toMap() {
    return LeagueMapper.ensureInitialized().encodeMap<League>(this as League);
  }

  LeagueCopyWith<League, League, League> get copyWith =>
      _LeagueCopyWithImpl(this as League, $identity, $identity);
  @override
  String toString() {
    return LeagueMapper.ensureInitialized().stringifyValue(this as League);
  }

  @override
  bool operator ==(Object other) {
    return LeagueMapper.ensureInitialized().equalsValue(this as League, other);
  }

  @override
  int get hashCode {
    return LeagueMapper.ensureInitialized().hashValue(this as League);
  }
}

extension LeagueValueCopy<$R, $Out> on ObjectCopyWith<$R, League, $Out> {
  LeagueCopyWith<$R, League, $Out> get $asLeague =>
      $base.as((v, t, t2) => _LeagueCopyWithImpl(v, t, t2));
}

abstract class LeagueCopyWith<$R, $In extends League, $Out>
    implements NestedFilterLayoutTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({int? id, String? name, int? nationId, Gender? gender});
  LeagueCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LeagueCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, League, $Out>
    implements LeagueCopyWith<$R, League, $Out> {
  _LeagueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<League> $mapper = LeagueMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? name,
          Object? nationId = $none,
          Object? gender = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (nationId != $none) #nationId: nationId,
        if (gender != $none) #gender: gender
      }));
  @override
  League $make(CopyWithData data) => League(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      nationId: data.get(#nationId, or: $value.nationId),
      gender: data.get(#gender, or: $value.gender));

  @override
  LeagueCopyWith<$R2, League, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LeagueCopyWithImpl($value, $cast, t);
}
