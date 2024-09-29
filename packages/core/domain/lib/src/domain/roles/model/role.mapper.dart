// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'role.dart';

class RoleMapper extends ClassMapperBase<Role> {
  RoleMapper._();

  static RoleMapper? _instance;
  static RoleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Role';

  static int _$eaId(Role v) => v.eaId;
  static const Field<Role, int> _f$eaId = Field('eaId', _$eaId);
  static String _$name(Role v) => v.name;
  static const Field<Role, String> _f$name = Field('name', _$name);
  static String _$positionName(Role v) => v.positionName;
  static const Field<Role, String> _f$positionName =
      Field('positionName', _$positionName);
  static bool _$isPlus(Role v) => v.isPlus;
  static const Field<Role, bool> _f$isPlus = Field('isPlus', _$isPlus);
  static bool _$isPlusPlus(Role v) => v.isPlusPlus;
  static const Field<Role, bool> _f$isPlusPlus =
      Field('isPlusPlus', _$isPlusPlus);
  static String _$cleanName(Role v) => v.cleanName;
  static const Field<Role, String> _f$cleanName =
      Field('cleanName', _$cleanName);
  static String _$description(Role v) => v.description;
  static const Field<Role, String> _f$description =
      Field('description', _$description);

  @override
  final MappableFields<Role> fields = const {
    #eaId: _f$eaId,
    #name: _f$name,
    #positionName: _f$positionName,
    #isPlus: _f$isPlus,
    #isPlusPlus: _f$isPlusPlus,
    #cleanName: _f$cleanName,
    #description: _f$description,
  };

  static Role _instantiate(DecodingData data) {
    return Role(
        eaId: data.dec(_f$eaId),
        name: data.dec(_f$name),
        positionName: data.dec(_f$positionName),
        isPlus: data.dec(_f$isPlus),
        isPlusPlus: data.dec(_f$isPlusPlus),
        cleanName: data.dec(_f$cleanName),
        description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static Role fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Role>(map);
  }

  static Role fromJson(String json) {
    return ensureInitialized().decodeJson<Role>(json);
  }
}

mixin RoleMappable {
  String toJson() {
    return RoleMapper.ensureInitialized().encodeJson<Role>(this as Role);
  }

  Map<String, dynamic> toMap() {
    return RoleMapper.ensureInitialized().encodeMap<Role>(this as Role);
  }

  RoleCopyWith<Role, Role, Role> get copyWith =>
      _RoleCopyWithImpl(this as Role, $identity, $identity);
  @override
  String toString() {
    return RoleMapper.ensureInitialized().stringifyValue(this as Role);
  }

  @override
  bool operator ==(Object other) {
    return RoleMapper.ensureInitialized().equalsValue(this as Role, other);
  }

  @override
  int get hashCode {
    return RoleMapper.ensureInitialized().hashValue(this as Role);
  }
}

extension RoleValueCopy<$R, $Out> on ObjectCopyWith<$R, Role, $Out> {
  RoleCopyWith<$R, Role, $Out> get $asRole =>
      $base.as((v, t, t2) => _RoleCopyWithImpl(v, t, t2));
}

abstract class RoleCopyWith<$R, $In extends Role, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? eaId,
      String? name,
      String? positionName,
      bool? isPlus,
      bool? isPlusPlus,
      String? cleanName,
      String? description});
  RoleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RoleCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Role, $Out>
    implements RoleCopyWith<$R, Role, $Out> {
  _RoleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Role> $mapper = RoleMapper.ensureInitialized();
  @override
  $R call(
          {int? eaId,
          String? name,
          String? positionName,
          bool? isPlus,
          bool? isPlusPlus,
          String? cleanName,
          String? description}) =>
      $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (name != null) #name: name,
        if (positionName != null) #positionName: positionName,
        if (isPlus != null) #isPlus: isPlus,
        if (isPlusPlus != null) #isPlusPlus: isPlusPlus,
        if (cleanName != null) #cleanName: cleanName,
        if (description != null) #description: description
      }));
  @override
  Role $make(CopyWithData data) => Role(
      eaId: data.get(#eaId, or: $value.eaId),
      name: data.get(#name, or: $value.name),
      positionName: data.get(#positionName, or: $value.positionName),
      isPlus: data.get(#isPlus, or: $value.isPlus),
      isPlusPlus: data.get(#isPlusPlus, or: $value.isPlusPlus),
      cleanName: data.get(#cleanName, or: $value.cleanName),
      description: data.get(#description, or: $value.description));

  @override
  RoleCopyWith<$R2, Role, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RoleCopyWithImpl($value, $cast, t);
}
