// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'accelerate_types.dart';

class AccelerateTypesMapper extends ClassMapperBase<AccelerateTypes> {
  AccelerateTypesMapper._();

  static AccelerateTypesMapper? _instance;
  static AccelerateTypesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AccelerateTypesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AccelerateTypes';

  static List<String> _$lengthy(AccelerateTypes v) => v.lengthy;
  static const Field<AccelerateTypes, List<String>> _f$lengthy =
      Field('lengthy', _$lengthy);
  static List<String> _$explosive(AccelerateTypes v) => v.explosive;
  static const Field<AccelerateTypes, List<String>> _f$explosive =
      Field('explosive', _$explosive);
  static List<String> _$controlled(AccelerateTypes v) => v.controlled;
  static const Field<AccelerateTypes, List<String>> _f$controlled =
      Field('controlled', _$controlled);
  static List<String> _$mostlyLengthy(AccelerateTypes v) => v.mostlyLengthy;
  static const Field<AccelerateTypes, List<String>> _f$mostlyLengthy =
      Field('mostlyLengthy', _$mostlyLengthy);
  static List<String> _$mostlyExplosive(AccelerateTypes v) => v.mostlyExplosive;
  static const Field<AccelerateTypes, List<String>> _f$mostlyExplosive =
      Field('mostlyExplosive', _$mostlyExplosive);
  static List<String> _$controlledLengthy(AccelerateTypes v) =>
      v.controlledLengthy;
  static const Field<AccelerateTypes, List<String>> _f$controlledLengthy =
      Field('controlledLengthy', _$controlledLengthy);
  static List<String> _$controlledExplosive(AccelerateTypes v) =>
      v.controlledExplosive;
  static const Field<AccelerateTypes, List<String>> _f$controlledExplosive =
      Field('controlledExplosive', _$controlledExplosive);

  @override
  final MappableFields<AccelerateTypes> fields = const {
    #lengthy: _f$lengthy,
    #explosive: _f$explosive,
    #controlled: _f$controlled,
    #mostlyLengthy: _f$mostlyLengthy,
    #mostlyExplosive: _f$mostlyExplosive,
    #controlledLengthy: _f$controlledLengthy,
    #controlledExplosive: _f$controlledExplosive,
  };

  static AccelerateTypes _instantiate(DecodingData data) {
    return AccelerateTypes(
        lengthy: data.dec(_f$lengthy),
        explosive: data.dec(_f$explosive),
        controlled: data.dec(_f$controlled),
        mostlyLengthy: data.dec(_f$mostlyLengthy),
        mostlyExplosive: data.dec(_f$mostlyExplosive),
        controlledLengthy: data.dec(_f$controlledLengthy),
        controlledExplosive: data.dec(_f$controlledExplosive));
  }

  @override
  final Function instantiate = _instantiate;

  static AccelerateTypes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AccelerateTypes>(map);
  }

  static AccelerateTypes fromJson(String json) {
    return ensureInitialized().decodeJson<AccelerateTypes>(json);
  }
}

mixin AccelerateTypesMappable {
  String toJson() {
    return AccelerateTypesMapper.ensureInitialized()
        .encodeJson<AccelerateTypes>(this as AccelerateTypes);
  }

  Map<String, dynamic> toMap() {
    return AccelerateTypesMapper.ensureInitialized()
        .encodeMap<AccelerateTypes>(this as AccelerateTypes);
  }

  AccelerateTypesCopyWith<AccelerateTypes, AccelerateTypes, AccelerateTypes>
      get copyWith => _AccelerateTypesCopyWithImpl(
          this as AccelerateTypes, $identity, $identity);
  @override
  String toString() {
    return AccelerateTypesMapper.ensureInitialized()
        .stringifyValue(this as AccelerateTypes);
  }

  @override
  bool operator ==(Object other) {
    return AccelerateTypesMapper.ensureInitialized()
        .equalsValue(this as AccelerateTypes, other);
  }

  @override
  int get hashCode {
    return AccelerateTypesMapper.ensureInitialized()
        .hashValue(this as AccelerateTypes);
  }
}

extension AccelerateTypesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AccelerateTypes, $Out> {
  AccelerateTypesCopyWith<$R, AccelerateTypes, $Out> get $asAccelerateTypes =>
      $base.as((v, t, t2) => _AccelerateTypesCopyWithImpl(v, t, t2));
}

abstract class AccelerateTypesCopyWith<$R, $In extends AccelerateTypes, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get lengthy;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get explosive;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get controlled;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get mostlyLengthy;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get mostlyExplosive;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get controlledLengthy;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get controlledExplosive;
  $R call(
      {List<String>? lengthy,
      List<String>? explosive,
      List<String>? controlled,
      List<String>? mostlyLengthy,
      List<String>? mostlyExplosive,
      List<String>? controlledLengthy,
      List<String>? controlledExplosive});
  AccelerateTypesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AccelerateTypesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AccelerateTypes, $Out>
    implements AccelerateTypesCopyWith<$R, AccelerateTypes, $Out> {
  _AccelerateTypesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AccelerateTypes> $mapper =
      AccelerateTypesMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get lengthy =>
      ListCopyWith($value.lengthy, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(lengthy: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get explosive =>
      ListCopyWith($value.explosive, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(explosive: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get controlled =>
      ListCopyWith($value.controlled, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(controlled: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get mostlyLengthy => ListCopyWith(
          $value.mostlyLengthy,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(mostlyLengthy: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get mostlyExplosive => ListCopyWith(
          $value.mostlyExplosive,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(mostlyExplosive: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get controlledLengthy => ListCopyWith(
          $value.controlledLengthy,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(controlledLengthy: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get controlledExplosive => ListCopyWith(
          $value.controlledExplosive,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(controlledExplosive: v));
  @override
  $R call(
          {List<String>? lengthy,
          List<String>? explosive,
          List<String>? controlled,
          List<String>? mostlyLengthy,
          List<String>? mostlyExplosive,
          List<String>? controlledLengthy,
          List<String>? controlledExplosive}) =>
      $apply(FieldCopyWithData({
        if (lengthy != null) #lengthy: lengthy,
        if (explosive != null) #explosive: explosive,
        if (controlled != null) #controlled: controlled,
        if (mostlyLengthy != null) #mostlyLengthy: mostlyLengthy,
        if (mostlyExplosive != null) #mostlyExplosive: mostlyExplosive,
        if (controlledLengthy != null) #controlledLengthy: controlledLengthy,
        if (controlledExplosive != null)
          #controlledExplosive: controlledExplosive
      }));
  @override
  AccelerateTypes $make(CopyWithData data) => AccelerateTypes(
      lengthy: data.get(#lengthy, or: $value.lengthy),
      explosive: data.get(#explosive, or: $value.explosive),
      controlled: data.get(#controlled, or: $value.controlled),
      mostlyLengthy: data.get(#mostlyLengthy, or: $value.mostlyLengthy),
      mostlyExplosive: data.get(#mostlyExplosive, or: $value.mostlyExplosive),
      controlledLengthy:
          data.get(#controlledLengthy, or: $value.controlledLengthy),
      controlledExplosive:
          data.get(#controlledExplosive, or: $value.controlledExplosive));

  @override
  AccelerateTypesCopyWith<$R2, AccelerateTypes, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AccelerateTypesCopyWithImpl($value, $cast, t);
}
