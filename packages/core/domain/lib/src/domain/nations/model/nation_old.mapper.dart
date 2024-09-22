// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nation_old.dart';

class NationOldMapper extends SubClassMapperBase<NationOld> {
  NationOldMapper._();

  static NationOldMapper? _instance;
  static NationOldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NationOldMapper._());
      NestedFilterLayoutTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NationOld';

  static int _$eaId(NationOld v) => v.eaId;
  static const Field<NationOld, int> _f$eaId = Field('eaId', _$eaId, key: 'id');
  static String _$name(NationOld v) => v.name;
  static const Field<NationOld, String> _f$name = Field('name', _$name);
  static bool _$isTop(NationOld v) => v.isTop;
  static const Field<NationOld, bool> _f$isTop =
      Field('isTop', _$isTop, opt: true, def: false);

  @override
  final MappableFields<NationOld> fields = const {
    #eaId: _f$eaId,
    #name: _f$name,
    #isTop: _f$isTop,
  };

  @override
  final String discriminatorKey = 'name';
  @override
  final dynamic discriminatorValue = 'nation';
  @override
  late final ClassMapperBase superMapper =
      NestedFilterLayoutTypeMapper.ensureInitialized();

  static NationOld _instantiate(DecodingData data) {
    return NationOld(
        id: data.dec(_f$eaId),
        name: data.dec(_f$name),
        isTop: data.dec(_f$isTop));
  }

  @override
  final Function instantiate = _instantiate;

  static NationOld fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NationOld>(map);
  }

  static NationOld fromJson(String json) {
    return ensureInitialized().decodeJson<NationOld>(json);
  }
}

mixin NationOldMappable {
  String toJson() {
    return NationOldMapper.ensureInitialized()
        .encodeJson<NationOld>(this as NationOld);
  }

  Map<String, dynamic> toMap() {
    return NationOldMapper.ensureInitialized()
        .encodeMap<NationOld>(this as NationOld);
  }

  NationOldCopyWith<NationOld, NationOld, NationOld> get copyWith =>
      _NationOldCopyWithImpl(this as NationOld, $identity, $identity);
  @override
  String toString() {
    return NationOldMapper.ensureInitialized()
        .stringifyValue(this as NationOld);
  }

  @override
  bool operator ==(Object other) {
    return NationOldMapper.ensureInitialized()
        .equalsValue(this as NationOld, other);
  }

  @override
  int get hashCode {
    return NationOldMapper.ensureInitialized().hashValue(this as NationOld);
  }
}

extension NationOldValueCopy<$R, $Out> on ObjectCopyWith<$R, NationOld, $Out> {
  NationOldCopyWith<$R, NationOld, $Out> get $asNationOld =>
      $base.as((v, t, t2) => _NationOldCopyWithImpl(v, t, t2));
}

abstract class NationOldCopyWith<$R, $In extends NationOld, $Out>
    implements NestedFilterLayoutTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({int? eaId, String? name, bool? isTop});
  NationOldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NationOldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NationOld, $Out>
    implements NationOldCopyWith<$R, NationOld, $Out> {
  _NationOldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NationOld> $mapper =
      NationOldMapper.ensureInitialized();
  @override
  $R call({int? eaId, String? name, bool? isTop}) => $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (name != null) #name: name,
        if (isTop != null) #isTop: isTop
      }));
  @override
  NationOld $make(CopyWithData data) => NationOld(
      id: data.get(#eaId, or: $value.eaId),
      name: data.get(#name, or: $value.name),
      isTop: data.get(#isTop, or: $value.isTop));

  @override
  NationOldCopyWith<$R2, NationOld, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NationOldCopyWithImpl($value, $cast, t);
}
