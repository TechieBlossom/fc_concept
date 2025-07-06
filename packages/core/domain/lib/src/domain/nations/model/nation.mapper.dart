// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nation.dart';

class NationMapper extends SubClassMapperBase<Nation> {
  NationMapper._();

  static NationMapper? _instance;
  static NationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NationMapper._());
      NestedFilterLayoutTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Nation';

  static int _$eaId(Nation v) => v.eaId;
  static const Field<Nation, int> _f$eaId = Field('eaId', _$eaId);
  static String _$name(Nation v) => v.name;
  static const Field<Nation, String> _f$name = Field('name', _$name);
  static String? _$imagePath(Nation v) => v.imagePath;
  static const Field<Nation, String> _f$imagePath =
      Field('imagePath', _$imagePath, opt: true);

  @override
  final MappableFields<Nation> fields = const {
    #eaId: _f$eaId,
    #name: _f$name,
    #imagePath: _f$imagePath,
  };

  @override
  final String discriminatorKey = 'name';
  @override
  final dynamic discriminatorValue = 'nation';
  @override
  late final ClassMapperBase superMapper =
      NestedFilterLayoutTypeMapper.ensureInitialized();

  static Nation _instantiate(DecodingData data) {
    return Nation(
        eaId: data.dec(_f$eaId),
        name: data.dec(_f$name),
        imagePath: data.dec(_f$imagePath));
  }

  @override
  final Function instantiate = _instantiate;

  static Nation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Nation>(map);
  }

  static Nation fromJson(String json) {
    return ensureInitialized().decodeJson<Nation>(json);
  }
}

mixin NationMappable {
  String toJson() {
    return NationMapper.ensureInitialized().encodeJson<Nation>(this as Nation);
  }

  Map<String, dynamic> toMap() {
    return NationMapper.ensureInitialized().encodeMap<Nation>(this as Nation);
  }

  NationCopyWith<Nation, Nation, Nation> get copyWith =>
      _NationCopyWithImpl<Nation, Nation>(this as Nation, $identity, $identity);
  @override
  String toString() {
    return NationMapper.ensureInitialized().stringifyValue(this as Nation);
  }

  @override
  bool operator ==(Object other) {
    return NationMapper.ensureInitialized().equalsValue(this as Nation, other);
  }

  @override
  int get hashCode {
    return NationMapper.ensureInitialized().hashValue(this as Nation);
  }
}

extension NationValueCopy<$R, $Out> on ObjectCopyWith<$R, Nation, $Out> {
  NationCopyWith<$R, Nation, $Out> get $asNation =>
      $base.as((v, t, t2) => _NationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NationCopyWith<$R, $In extends Nation, $Out>
    implements NestedFilterLayoutTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({int? eaId, String? name, String? imagePath});
  NationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NationCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Nation, $Out>
    implements NationCopyWith<$R, Nation, $Out> {
  _NationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Nation> $mapper = NationMapper.ensureInitialized();
  @override
  $R call({int? eaId, String? name, Object? imagePath = $none}) =>
      $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (name != null) #name: name,
        if (imagePath != $none) #imagePath: imagePath
      }));
  @override
  Nation $make(CopyWithData data) => Nation(
      eaId: data.get(#eaId, or: $value.eaId),
      name: data.get(#name, or: $value.name),
      imagePath: data.get(#imagePath, or: $value.imagePath));

  @override
  NationCopyWith<$R2, Nation, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _NationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
