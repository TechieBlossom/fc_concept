// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'position.dart';

class PositionMapper extends ClassMapperBase<Position> {
  PositionMapper._();

  static PositionMapper? _instance;
  static PositionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PositionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Position';

  static int _$eaId(Position v) => v.eaId;
  static const Field<Position, int> _f$eaId = Field('eaId', _$eaId);
  static String _$label(Position v) => v.label;
  static const Field<Position, String> _f$label = Field('label', _$label);
  static String _$shortLabel(Position v) => v.shortLabel;
  static const Field<Position, String> _f$shortLabel =
      Field('shortLabel', _$shortLabel);
  static String _$positionTypeId(Position v) => v.positionTypeId;
  static const Field<Position, String> _f$positionTypeId =
      Field('positionTypeId', _$positionTypeId);
  static String _$positionTypeName(Position v) => v.positionTypeName;
  static const Field<Position, String> _f$positionTypeName =
      Field('positionTypeName', _$positionTypeName);

  @override
  final MappableFields<Position> fields = const {
    #eaId: _f$eaId,
    #label: _f$label,
    #shortLabel: _f$shortLabel,
    #positionTypeId: _f$positionTypeId,
    #positionTypeName: _f$positionTypeName,
  };

  static Position _instantiate(DecodingData data) {
    return Position(
        eaId: data.dec(_f$eaId),
        label: data.dec(_f$label),
        shortLabel: data.dec(_f$shortLabel),
        positionTypeId: data.dec(_f$positionTypeId),
        positionTypeName: data.dec(_f$positionTypeName));
  }

  @override
  final Function instantiate = _instantiate;

  static Position fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Position>(map);
  }

  static Position fromJson(String json) {
    return ensureInitialized().decodeJson<Position>(json);
  }
}

mixin PositionMappable {
  String toJson() {
    return PositionMapper.ensureInitialized()
        .encodeJson<Position>(this as Position);
  }

  Map<String, dynamic> toMap() {
    return PositionMapper.ensureInitialized()
        .encodeMap<Position>(this as Position);
  }

  PositionCopyWith<Position, Position, Position> get copyWith =>
      _PositionCopyWithImpl(this as Position, $identity, $identity);
  @override
  String toString() {
    return PositionMapper.ensureInitialized().stringifyValue(this as Position);
  }

  @override
  bool operator ==(Object other) {
    return PositionMapper.ensureInitialized()
        .equalsValue(this as Position, other);
  }

  @override
  int get hashCode {
    return PositionMapper.ensureInitialized().hashValue(this as Position);
  }
}

extension PositionValueCopy<$R, $Out> on ObjectCopyWith<$R, Position, $Out> {
  PositionCopyWith<$R, Position, $Out> get $asPosition =>
      $base.as((v, t, t2) => _PositionCopyWithImpl(v, t, t2));
}

abstract class PositionCopyWith<$R, $In extends Position, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? eaId,
      String? label,
      String? shortLabel,
      String? positionTypeId,
      String? positionTypeName});
  PositionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PositionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Position, $Out>
    implements PositionCopyWith<$R, Position, $Out> {
  _PositionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Position> $mapper =
      PositionMapper.ensureInitialized();
  @override
  $R call(
          {int? eaId,
          String? label,
          String? shortLabel,
          String? positionTypeId,
          String? positionTypeName}) =>
      $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (label != null) #label: label,
        if (shortLabel != null) #shortLabel: shortLabel,
        if (positionTypeId != null) #positionTypeId: positionTypeId,
        if (positionTypeName != null) #positionTypeName: positionTypeName
      }));
  @override
  Position $make(CopyWithData data) => Position(
      eaId: data.get(#eaId, or: $value.eaId),
      label: data.get(#label, or: $value.label),
      shortLabel: data.get(#shortLabel, or: $value.shortLabel),
      positionTypeId: data.get(#positionTypeId, or: $value.positionTypeId),
      positionTypeName:
          data.get(#positionTypeName, or: $value.positionTypeName));

  @override
  PositionCopyWith<$R2, Position, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PositionCopyWithImpl($value, $cast, t);
}
