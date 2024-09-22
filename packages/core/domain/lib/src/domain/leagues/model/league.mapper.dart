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
    }
    return _instance!;
  }

  @override
  final String id = 'League';

  static int _$eaId(League v) => v.eaId;
  static const Field<League, int> _f$eaId = Field('eaId', _$eaId);
  static String _$name(League v) => v.name;
  static const Field<League, String> _f$name = Field('name', _$name);
  static String? _$imagePath(League v) => v.imagePath;
  static const Field<League, String> _f$imagePath =
      Field('imagePath', _$imagePath, opt: true);
  static String? _$imageLightPath(League v) => v.imageLightPath;
  static const Field<League, String> _f$imageLightPath =
      Field('imageLightPath', _$imageLightPath, opt: true);

  @override
  final MappableFields<League> fields = const {
    #eaId: _f$eaId,
    #name: _f$name,
    #imagePath: _f$imagePath,
    #imageLightPath: _f$imageLightPath,
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
        eaId: data.dec(_f$eaId),
        name: data.dec(_f$name),
        imagePath: data.dec(_f$imagePath),
        imageLightPath: data.dec(_f$imageLightPath));
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
  $R call({int? eaId, String? name, String? imagePath, String? imageLightPath});
  LeagueCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LeagueCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, League, $Out>
    implements LeagueCopyWith<$R, League, $Out> {
  _LeagueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<League> $mapper = LeagueMapper.ensureInitialized();
  @override
  $R call(
          {int? eaId,
          String? name,
          Object? imagePath = $none,
          Object? imageLightPath = $none}) =>
      $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (name != null) #name: name,
        if (imagePath != $none) #imagePath: imagePath,
        if (imageLightPath != $none) #imageLightPath: imageLightPath
      }));
  @override
  League $make(CopyWithData data) => League(
      eaId: data.get(#eaId, or: $value.eaId),
      name: data.get(#name, or: $value.name),
      imagePath: data.get(#imagePath, or: $value.imagePath),
      imageLightPath: data.get(#imageLightPath, or: $value.imageLightPath));

  @override
  LeagueCopyWith<$R2, League, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LeagueCopyWithImpl($value, $cast, t);
}
