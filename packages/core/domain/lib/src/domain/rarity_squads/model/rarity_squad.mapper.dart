// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rarity_squad.dart';

class RaritySquadMapper extends ClassMapperBase<RaritySquad> {
  RaritySquadMapper._();

  static RaritySquadMapper? _instance;
  static RaritySquadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RaritySquadMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RaritySquad';

  static int _$id(RaritySquad v) => v.id;
  static const Field<RaritySquad, int> _f$id = Field('id', _$id);
  static String _$name(RaritySquad v) => v.name;
  static const Field<RaritySquad, String> _f$name = Field('name', _$name);
  static int _$rarityGroupId(RaritySquad v) => v.rarityGroupId;
  static const Field<RaritySquad, int> _f$rarityGroupId =
      Field('rarityGroupId', _$rarityGroupId);
  static String _$color(RaritySquad v) => v.color;
  static const Field<RaritySquad, String> _f$color = Field('color', _$color);
  static DateTime _$releaseDate(RaritySquad v) => v.releaseDate;
  static const Field<RaritySquad, DateTime> _f$releaseDate =
      Field('releaseDate', _$releaseDate);
  static String _$imagePath(RaritySquad v) => v.imagePath;
  static const Field<RaritySquad, String> _f$imagePath =
      Field('imagePath', _$imagePath);

  @override
  final MappableFields<RaritySquad> fields = const {
    #id: _f$id,
    #name: _f$name,
    #rarityGroupId: _f$rarityGroupId,
    #color: _f$color,
    #releaseDate: _f$releaseDate,
    #imagePath: _f$imagePath,
  };

  static RaritySquad _instantiate(DecodingData data) {
    return RaritySquad(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        rarityGroupId: data.dec(_f$rarityGroupId),
        color: data.dec(_f$color),
        releaseDate: data.dec(_f$releaseDate),
        imagePath: data.dec(_f$imagePath));
  }

  @override
  final Function instantiate = _instantiate;

  static RaritySquad fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RaritySquad>(map);
  }

  static RaritySquad fromJson(String json) {
    return ensureInitialized().decodeJson<RaritySquad>(json);
  }
}

mixin RaritySquadMappable {
  String toJson() {
    return RaritySquadMapper.ensureInitialized()
        .encodeJson<RaritySquad>(this as RaritySquad);
  }

  Map<String, dynamic> toMap() {
    return RaritySquadMapper.ensureInitialized()
        .encodeMap<RaritySquad>(this as RaritySquad);
  }

  RaritySquadCopyWith<RaritySquad, RaritySquad, RaritySquad> get copyWith =>
      _RaritySquadCopyWithImpl<RaritySquad, RaritySquad>(
          this as RaritySquad, $identity, $identity);
  @override
  String toString() {
    return RaritySquadMapper.ensureInitialized()
        .stringifyValue(this as RaritySquad);
  }

  @override
  bool operator ==(Object other) {
    return RaritySquadMapper.ensureInitialized()
        .equalsValue(this as RaritySquad, other);
  }

  @override
  int get hashCode {
    return RaritySquadMapper.ensureInitialized().hashValue(this as RaritySquad);
  }
}

extension RaritySquadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RaritySquad, $Out> {
  RaritySquadCopyWith<$R, RaritySquad, $Out> get $asRaritySquad =>
      $base.as((v, t, t2) => _RaritySquadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RaritySquadCopyWith<$R, $In extends RaritySquad, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? name,
      int? rarityGroupId,
      String? color,
      DateTime? releaseDate,
      String? imagePath});
  RaritySquadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RaritySquadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RaritySquad, $Out>
    implements RaritySquadCopyWith<$R, RaritySquad, $Out> {
  _RaritySquadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RaritySquad> $mapper =
      RaritySquadMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? name,
          int? rarityGroupId,
          String? color,
          DateTime? releaseDate,
          String? imagePath}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (rarityGroupId != null) #rarityGroupId: rarityGroupId,
        if (color != null) #color: color,
        if (releaseDate != null) #releaseDate: releaseDate,
        if (imagePath != null) #imagePath: imagePath
      }));
  @override
  RaritySquad $make(CopyWithData data) => RaritySquad(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      rarityGroupId: data.get(#rarityGroupId, or: $value.rarityGroupId),
      color: data.get(#color, or: $value.color),
      releaseDate: data.get(#releaseDate, or: $value.releaseDate),
      imagePath: data.get(#imagePath, or: $value.imagePath));

  @override
  RaritySquadCopyWith<$R2, RaritySquad, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RaritySquadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
