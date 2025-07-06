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

  static int _$eaId(Rarity v) => v.eaId;
  static const Field<Rarity, int> _f$eaId = Field('eaId', _$eaId);
  static String _$name(Rarity v) => v.name;
  static const Field<Rarity, String> _f$name = Field('name', _$name);
  static String _$dominantColor(Rarity v) => v.dominantColor;
  static const Field<Rarity, String> _f$dominantColor =
      Field('dominantColor', _$dominantColor);
  static String _$imagePath(Rarity v) => v.imagePath;
  static const Field<Rarity, String> _f$imagePath =
      Field('imagePath', _$imagePath);
  static String _$compactImagePath(Rarity v) => v.compactImagePath;
  static const Field<Rarity, String> _f$compactImagePath =
      Field('compactImagePath', _$compactImagePath);
  static bool _$isSpecial(Rarity v) => v.isSpecial;
  static const Field<Rarity, bool> _f$isSpecial =
      Field('isSpecial', _$isSpecial);
  static bool _$isBrightColorScheme(Rarity v) => v.isBrightColorScheme;
  static const Field<Rarity, bool> _f$isBrightColorScheme = Field(
      'isBrightColorScheme', _$isBrightColorScheme,
      opt: true, def: false);
  static List<String>? _$textColor(Rarity v) => v.textColor;
  static const Field<Rarity, List<String>> _f$textColor =
      Field('textColor', _$textColor);
  static List<String>? _$lineColor(Rarity v) => v.lineColor;
  static const Field<Rarity, List<String>> _f$lineColor =
      Field('lineColor', _$lineColor, opt: true);
  static List<String>? _$shadowColor(Rarity v) => v.shadowColor;
  static const Field<Rarity, List<String>> _f$shadowColor =
      Field('shadowColor', _$shadowColor, opt: true);
  static int _$numberOfPlayers(Rarity v) => v.numberOfPlayers;
  static const Field<Rarity, int> _f$numberOfPlayers =
      Field('numberOfPlayers', _$numberOfPlayers, opt: true, def: 0);

  @override
  final MappableFields<Rarity> fields = const {
    #eaId: _f$eaId,
    #name: _f$name,
    #dominantColor: _f$dominantColor,
    #imagePath: _f$imagePath,
    #compactImagePath: _f$compactImagePath,
    #isSpecial: _f$isSpecial,
    #isBrightColorScheme: _f$isBrightColorScheme,
    #textColor: _f$textColor,
    #lineColor: _f$lineColor,
    #shadowColor: _f$shadowColor,
    #numberOfPlayers: _f$numberOfPlayers,
  };

  static Rarity _instantiate(DecodingData data) {
    return Rarity(
        eaId: data.dec(_f$eaId),
        name: data.dec(_f$name),
        dominantColor: data.dec(_f$dominantColor),
        imagePath: data.dec(_f$imagePath),
        compactImagePath: data.dec(_f$compactImagePath),
        isSpecial: data.dec(_f$isSpecial),
        isBrightColorScheme: data.dec(_f$isBrightColorScheme),
        textColor: data.dec(_f$textColor),
        lineColor: data.dec(_f$lineColor),
        shadowColor: data.dec(_f$shadowColor),
        numberOfPlayers: data.dec(_f$numberOfPlayers));
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
      _RarityCopyWithImpl<Rarity, Rarity>(this as Rarity, $identity, $identity);
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
      $base.as((v, t, t2) => _RarityCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RarityCopyWith<$R, $In extends Rarity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get textColor;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get lineColor;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get shadowColor;
  $R call(
      {int? eaId,
      String? name,
      String? dominantColor,
      String? imagePath,
      String? compactImagePath,
      bool? isSpecial,
      bool? isBrightColorScheme,
      List<String>? textColor,
      List<String>? lineColor,
      List<String>? shadowColor,
      int? numberOfPlayers});
  RarityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RarityCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Rarity, $Out>
    implements RarityCopyWith<$R, Rarity, $Out> {
  _RarityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Rarity> $mapper = RarityMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get textColor =>
      $value.textColor != null
          ? ListCopyWith(
              $value.textColor!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(textColor: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get lineColor =>
      $value.lineColor != null
          ? ListCopyWith(
              $value.lineColor!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(lineColor: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get shadowColor => $value.shadowColor != null
          ? ListCopyWith(
              $value.shadowColor!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(shadowColor: v))
          : null;
  @override
  $R call(
          {int? eaId,
          String? name,
          String? dominantColor,
          String? imagePath,
          String? compactImagePath,
          bool? isSpecial,
          bool? isBrightColorScheme,
          Object? textColor = $none,
          Object? lineColor = $none,
          Object? shadowColor = $none,
          int? numberOfPlayers}) =>
      $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (name != null) #name: name,
        if (dominantColor != null) #dominantColor: dominantColor,
        if (imagePath != null) #imagePath: imagePath,
        if (compactImagePath != null) #compactImagePath: compactImagePath,
        if (isSpecial != null) #isSpecial: isSpecial,
        if (isBrightColorScheme != null)
          #isBrightColorScheme: isBrightColorScheme,
        if (textColor != $none) #textColor: textColor,
        if (lineColor != $none) #lineColor: lineColor,
        if (shadowColor != $none) #shadowColor: shadowColor,
        if (numberOfPlayers != null) #numberOfPlayers: numberOfPlayers
      }));
  @override
  Rarity $make(CopyWithData data) => Rarity(
      eaId: data.get(#eaId, or: $value.eaId),
      name: data.get(#name, or: $value.name),
      dominantColor: data.get(#dominantColor, or: $value.dominantColor),
      imagePath: data.get(#imagePath, or: $value.imagePath),
      compactImagePath:
          data.get(#compactImagePath, or: $value.compactImagePath),
      isSpecial: data.get(#isSpecial, or: $value.isSpecial),
      isBrightColorScheme:
          data.get(#isBrightColorScheme, or: $value.isBrightColorScheme),
      textColor: data.get(#textColor, or: $value.textColor),
      lineColor: data.get(#lineColor, or: $value.lineColor),
      shadowColor: data.get(#shadowColor, or: $value.shadowColor),
      numberOfPlayers: data.get(#numberOfPlayers, or: $value.numberOfPlayers));

  @override
  RarityCopyWith<$R2, Rarity, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RarityCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
