// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'chemistry_style.dart';

class ChemistryStyleMapper extends ClassMapperBase<ChemistryStyle> {
  ChemistryStyleMapper._();

  static ChemistryStyleMapper? _instance;
  static ChemistryStyleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChemistryStyleMapper._());
      ChemistryModifierMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChemistryStyle';

  static String _$id(ChemistryStyle v) => v.id;
  static const Field<ChemistryStyle, String> _f$id = Field('id', _$id);
  static String _$name(ChemistryStyle v) => v.name;
  static const Field<ChemistryStyle, String> _f$name = Field('name', _$name);
  static String _$shortName(ChemistryStyle v) => v.shortName;
  static const Field<ChemistryStyle, String> _f$shortName =
      Field('shortName', _$shortName);
  static String _$charCode(ChemistryStyle v) => v.charCode;
  static const Field<ChemistryStyle, String> _f$charCode =
      Field('charCode', _$charCode);
  static bool _$isGkStyle(ChemistryStyle v) => v.isGkStyle;
  static const Field<ChemistryStyle, bool> _f$isGkStyle =
      Field('isGkStyle', _$isGkStyle);
  static ChemistryModifier _$oneChemistryModifiers(ChemistryStyle v) =>
      v.oneChemistryModifiers;
  static const Field<ChemistryStyle, ChemistryModifier>
      _f$oneChemistryModifiers =
      Field('oneChemistryModifiers', _$oneChemistryModifiers);
  static ChemistryModifier _$twoChemistryModifiers(ChemistryStyle v) =>
      v.twoChemistryModifiers;
  static const Field<ChemistryStyle, ChemistryModifier>
      _f$twoChemistryModifiers =
      Field('twoChemistryModifiers', _$twoChemistryModifiers);
  static ChemistryModifier _$threeChemistryModifiers(ChemistryStyle v) =>
      v.threeChemistryModifiers;
  static const Field<ChemistryStyle, ChemistryModifier>
      _f$threeChemistryModifiers =
      Field('threeChemistryModifiers', _$threeChemistryModifiers);

  @override
  final MappableFields<ChemistryStyle> fields = const {
    #id: _f$id,
    #name: _f$name,
    #shortName: _f$shortName,
    #charCode: _f$charCode,
    #isGkStyle: _f$isGkStyle,
    #oneChemistryModifiers: _f$oneChemistryModifiers,
    #twoChemistryModifiers: _f$twoChemistryModifiers,
    #threeChemistryModifiers: _f$threeChemistryModifiers,
  };

  static ChemistryStyle _instantiate(DecodingData data) {
    return ChemistryStyle(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        shortName: data.dec(_f$shortName),
        charCode: data.dec(_f$charCode),
        isGkStyle: data.dec(_f$isGkStyle),
        oneChemistryModifiers: data.dec(_f$oneChemistryModifiers),
        twoChemistryModifiers: data.dec(_f$twoChemistryModifiers),
        threeChemistryModifiers: data.dec(_f$threeChemistryModifiers));
  }

  @override
  final Function instantiate = _instantiate;

  static ChemistryStyle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChemistryStyle>(map);
  }

  static ChemistryStyle fromJson(String json) {
    return ensureInitialized().decodeJson<ChemistryStyle>(json);
  }
}

mixin ChemistryStyleMappable {
  String toJson() {
    return ChemistryStyleMapper.ensureInitialized()
        .encodeJson<ChemistryStyle>(this as ChemistryStyle);
  }

  Map<String, dynamic> toMap() {
    return ChemistryStyleMapper.ensureInitialized()
        .encodeMap<ChemistryStyle>(this as ChemistryStyle);
  }

  ChemistryStyleCopyWith<ChemistryStyle, ChemistryStyle, ChemistryStyle>
      get copyWith => _ChemistryStyleCopyWithImpl(
          this as ChemistryStyle, $identity, $identity);
  @override
  String toString() {
    return ChemistryStyleMapper.ensureInitialized()
        .stringifyValue(this as ChemistryStyle);
  }

  @override
  bool operator ==(Object other) {
    return ChemistryStyleMapper.ensureInitialized()
        .equalsValue(this as ChemistryStyle, other);
  }

  @override
  int get hashCode {
    return ChemistryStyleMapper.ensureInitialized()
        .hashValue(this as ChemistryStyle);
  }
}

extension ChemistryStyleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChemistryStyle, $Out> {
  ChemistryStyleCopyWith<$R, ChemistryStyle, $Out> get $asChemistryStyle =>
      $base.as((v, t, t2) => _ChemistryStyleCopyWithImpl(v, t, t2));
}

abstract class ChemistryStyleCopyWith<$R, $In extends ChemistryStyle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ChemistryModifierCopyWith<$R, ChemistryModifier, ChemistryModifier>
      get oneChemistryModifiers;
  ChemistryModifierCopyWith<$R, ChemistryModifier, ChemistryModifier>
      get twoChemistryModifiers;
  ChemistryModifierCopyWith<$R, ChemistryModifier, ChemistryModifier>
      get threeChemistryModifiers;
  $R call(
      {String? id,
      String? name,
      String? shortName,
      String? charCode,
      bool? isGkStyle,
      ChemistryModifier? oneChemistryModifiers,
      ChemistryModifier? twoChemistryModifiers,
      ChemistryModifier? threeChemistryModifiers});
  ChemistryStyleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChemistryStyleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChemistryStyle, $Out>
    implements ChemistryStyleCopyWith<$R, ChemistryStyle, $Out> {
  _ChemistryStyleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChemistryStyle> $mapper =
      ChemistryStyleMapper.ensureInitialized();
  @override
  ChemistryModifierCopyWith<$R, ChemistryModifier, ChemistryModifier>
      get oneChemistryModifiers => $value.oneChemistryModifiers.copyWith
          .$chain((v) => call(oneChemistryModifiers: v));
  @override
  ChemistryModifierCopyWith<$R, ChemistryModifier, ChemistryModifier>
      get twoChemistryModifiers => $value.twoChemistryModifiers.copyWith
          .$chain((v) => call(twoChemistryModifiers: v));
  @override
  ChemistryModifierCopyWith<$R, ChemistryModifier, ChemistryModifier>
      get threeChemistryModifiers => $value.threeChemistryModifiers.copyWith
          .$chain((v) => call(threeChemistryModifiers: v));
  @override
  $R call(
          {String? id,
          String? name,
          String? shortName,
          String? charCode,
          bool? isGkStyle,
          ChemistryModifier? oneChemistryModifiers,
          ChemistryModifier? twoChemistryModifiers,
          ChemistryModifier? threeChemistryModifiers}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (shortName != null) #shortName: shortName,
        if (charCode != null) #charCode: charCode,
        if (isGkStyle != null) #isGkStyle: isGkStyle,
        if (oneChemistryModifiers != null)
          #oneChemistryModifiers: oneChemistryModifiers,
        if (twoChemistryModifiers != null)
          #twoChemistryModifiers: twoChemistryModifiers,
        if (threeChemistryModifiers != null)
          #threeChemistryModifiers: threeChemistryModifiers
      }));
  @override
  ChemistryStyle $make(CopyWithData data) => ChemistryStyle(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      shortName: data.get(#shortName, or: $value.shortName),
      charCode: data.get(#charCode, or: $value.charCode),
      isGkStyle: data.get(#isGkStyle, or: $value.isGkStyle),
      oneChemistryModifiers:
          data.get(#oneChemistryModifiers, or: $value.oneChemistryModifiers),
      twoChemistryModifiers:
          data.get(#twoChemistryModifiers, or: $value.twoChemistryModifiers),
      threeChemistryModifiers: data.get(#threeChemistryModifiers,
          or: $value.threeChemistryModifiers));

  @override
  ChemistryStyleCopyWith<$R2, ChemistryStyle, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChemistryStyleCopyWithImpl($value, $cast, t);
}
