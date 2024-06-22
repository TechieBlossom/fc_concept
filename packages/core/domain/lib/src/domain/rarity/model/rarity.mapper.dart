// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rarity.dart';

class RarityMapper extends ClassMapperBase<Rarity> {
  RarityMapper._();

  static RarityMapper? _instance;
  static RarityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RarityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Rarity';

  static int _$id(Rarity v) => v.id;
  static const Field<Rarity, int> _f$id = Field('id', _$id);
  static String _$name(Rarity v) => v.name;
  static const Field<Rarity, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<Rarity> fields = const {
    #id: _f$id,
    #name: _f$name,
  };

  static Rarity _instantiate(DecodingData data) {
    return Rarity(id: data.dec(_f$id), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static Rarity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Rarity>(map);
  }

  static Rarity fromJson(String json) {
    return ensureInitialized().decodeJson<Rarity>(json);
  }
}

mixin RarityMappable {
  String toJson() {
    return RarityMapper.ensureInitialized().encodeJson<Rarity>(this as Rarity);
  }

  Map<String, dynamic> toMap() {
    return RarityMapper.ensureInitialized().encodeMap<Rarity>(this as Rarity);
  }

  RarityCopyWith<Rarity, Rarity, Rarity> get copyWith =>
      _RarityCopyWithImpl(this as Rarity, $identity, $identity);
  @override
  String toString() {
    return RarityMapper.ensureInitialized().stringifyValue(this as Rarity);
  }

  @override
  bool operator ==(Object other) {
    return RarityMapper.ensureInitialized().equalsValue(this as Rarity, other);
  }

  @override
  int get hashCode {
    return RarityMapper.ensureInitialized().hashValue(this as Rarity);
  }
}

extension RarityValueCopy<$R, $Out> on ObjectCopyWith<$R, Rarity, $Out> {
  RarityCopyWith<$R, Rarity, $Out> get $asRarity =>
      $base.as((v, t, t2) => _RarityCopyWithImpl(v, t, t2));
}

abstract class RarityCopyWith<$R, $In extends Rarity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name});
  RarityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RarityCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Rarity, $Out>
    implements RarityCopyWith<$R, Rarity, $Out> {
  _RarityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Rarity> $mapper = RarityMapper.ensureInitialized();
  @override
  $R call({int? id, String? name}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (name != null) #name: name}));
  @override
  Rarity $make(CopyWithData data) => Rarity(
      id: data.get(#id, or: $value.id), name: data.get(#name, or: $value.name));

  @override
  RarityCopyWith<$R2, Rarity, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RarityCopyWithImpl($value, $cast, t);
}
