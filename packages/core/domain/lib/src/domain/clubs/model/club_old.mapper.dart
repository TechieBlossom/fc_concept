// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'club_old.dart';

class ClubOldMapper extends ClassMapperBase<ClubOld> {
  ClubOldMapper._();

  static ClubOldMapper? _instance;
  static ClubOldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClubOldMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ClubOld';

  static int? _$id(ClubOld v) => v.id;
  static const Field<ClubOld, int> _f$id = Field('id', _$id);
  static String? _$name(ClubOld v) => v.name;
  static const Field<ClubOld, String> _f$name = Field('name', _$name);
  static int? _$league(ClubOld v) => v.league;
  static const Field<ClubOld, int> _f$league = Field('league', _$league);

  @override
  final MappableFields<ClubOld> fields = const {
    #id: _f$id,
    #name: _f$name,
    #league: _f$league,
  };

  static ClubOld _instantiate(DecodingData data) {
    return ClubOld(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        league: data.dec(_f$league));
  }

  @override
  final Function instantiate = _instantiate;

  static ClubOld fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClubOld>(map);
  }

  static ClubOld fromJson(String json) {
    return ensureInitialized().decodeJson<ClubOld>(json);
  }
}

mixin ClubOldMappable {
  String toJson() {
    return ClubOldMapper.ensureInitialized()
        .encodeJson<ClubOld>(this as ClubOld);
  }

  Map<String, dynamic> toMap() {
    return ClubOldMapper.ensureInitialized()
        .encodeMap<ClubOld>(this as ClubOld);
  }

  ClubOldCopyWith<ClubOld, ClubOld, ClubOld> get copyWith =>
      _ClubOldCopyWithImpl(this as ClubOld, $identity, $identity);
  @override
  String toString() {
    return ClubOldMapper.ensureInitialized().stringifyValue(this as ClubOld);
  }

  @override
  bool operator ==(Object other) {
    return ClubOldMapper.ensureInitialized()
        .equalsValue(this as ClubOld, other);
  }

  @override
  int get hashCode {
    return ClubOldMapper.ensureInitialized().hashValue(this as ClubOld);
  }
}

extension ClubOldValueCopy<$R, $Out> on ObjectCopyWith<$R, ClubOld, $Out> {
  ClubOldCopyWith<$R, ClubOld, $Out> get $asClubOld =>
      $base.as((v, t, t2) => _ClubOldCopyWithImpl(v, t, t2));
}

abstract class ClubOldCopyWith<$R, $In extends ClubOld, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, int? league});
  ClubOldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClubOldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClubOld, $Out>
    implements ClubOldCopyWith<$R, ClubOld, $Out> {
  _ClubOldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClubOld> $mapper =
      ClubOldMapper.ensureInitialized();
  @override
  $R call({Object? id = $none, Object? name = $none, Object? league = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (name != $none) #name: name,
        if (league != $none) #league: league
      }));
  @override
  ClubOld $make(CopyWithData data) => ClubOld(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      league: data.get(#league, or: $value.league));

  @override
  ClubOldCopyWith<$R2, ClubOld, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ClubOldCopyWithImpl($value, $cast, t);
}
