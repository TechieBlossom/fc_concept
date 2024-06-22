// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'club.dart';

class ClubMapper extends ClassMapperBase<Club> {
  ClubMapper._();

  static ClubMapper? _instance;
  static ClubMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClubMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Club';

  static int? _$id(Club v) => v.id;
  static const Field<Club, int> _f$id = Field('id', _$id);
  static String? _$name(Club v) => v.name;
  static const Field<Club, String> _f$name = Field('name', _$name);
  static int? _$league(Club v) => v.league;
  static const Field<Club, int> _f$league = Field('league', _$league);

  @override
  final MappableFields<Club> fields = const {
    #id: _f$id,
    #name: _f$name,
    #league: _f$league,
  };

  static Club _instantiate(DecodingData data) {
    return Club(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        league: data.dec(_f$league));
  }

  @override
  final Function instantiate = _instantiate;

  static Club fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Club>(map);
  }

  static Club fromJson(String json) {
    return ensureInitialized().decodeJson<Club>(json);
  }
}

mixin ClubMappable {
  String toJson() {
    return ClubMapper.ensureInitialized().encodeJson<Club>(this as Club);
  }

  Map<String, dynamic> toMap() {
    return ClubMapper.ensureInitialized().encodeMap<Club>(this as Club);
  }

  ClubCopyWith<Club, Club, Club> get copyWith =>
      _ClubCopyWithImpl(this as Club, $identity, $identity);
  @override
  String toString() {
    return ClubMapper.ensureInitialized().stringifyValue(this as Club);
  }

  @override
  bool operator ==(Object other) {
    return ClubMapper.ensureInitialized().equalsValue(this as Club, other);
  }

  @override
  int get hashCode {
    return ClubMapper.ensureInitialized().hashValue(this as Club);
  }
}

extension ClubValueCopy<$R, $Out> on ObjectCopyWith<$R, Club, $Out> {
  ClubCopyWith<$R, Club, $Out> get $asClub =>
      $base.as((v, t, t2) => _ClubCopyWithImpl(v, t, t2));
}

abstract class ClubCopyWith<$R, $In extends Club, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, int? league});
  ClubCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClubCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Club, $Out>
    implements ClubCopyWith<$R, Club, $Out> {
  _ClubCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Club> $mapper = ClubMapper.ensureInitialized();
  @override
  $R call({Object? id = $none, Object? name = $none, Object? league = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (name != $none) #name: name,
        if (league != $none) #league: league
      }));
  @override
  Club $make(CopyWithData data) => Club(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      league: data.get(#league, or: $value.league));

  @override
  ClubCopyWith<$R2, Club, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ClubCopyWithImpl($value, $cast, t);
}
