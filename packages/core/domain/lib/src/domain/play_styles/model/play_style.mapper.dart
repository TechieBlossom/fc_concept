// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'play_style.dart';

class PlayStyleMapper extends ClassMapperBase<PlayStyle> {
  PlayStyleMapper._();

  static PlayStyleMapper? _instance;
  static PlayStyleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayStyleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlayStyle';

  static int _$eaId(PlayStyle v) => v.eaId;
  static const Field<PlayStyle, int> _f$eaId = Field('eaId', _$eaId);
  static String _$name(PlayStyle v) => v.name;
  static const Field<PlayStyle, String> _f$name = Field('name', _$name);
  static int _$categoryId(PlayStyle v) => v.categoryId;
  static const Field<PlayStyle, int> _f$categoryId =
      Field('categoryId', _$categoryId);
  static String _$whoHasIt(PlayStyle v) => v.whoHasIt;
  static const Field<PlayStyle, String> _f$whoHasIt =
      Field('whoHasIt', _$whoHasIt);
  static String _$playstyleDescription(PlayStyle v) => v.playstyleDescription;
  static const Field<PlayStyle, String> _f$playstyleDescription =
      Field('playstyleDescription', _$playstyleDescription);
  static String _$playstylePDescription(PlayStyle v) => v.playstylePDescription;
  static const Field<PlayStyle, String> _f$playstylePDescription =
      Field('playstylePDescription', _$playstylePDescription);
  static String _$imagePath(PlayStyle v) => v.imagePath;
  static const Field<PlayStyle, String> _f$imagePath =
      Field('imagePath', _$imagePath);

  @override
  final MappableFields<PlayStyle> fields = const {
    #eaId: _f$eaId,
    #name: _f$name,
    #categoryId: _f$categoryId,
    #whoHasIt: _f$whoHasIt,
    #playstyleDescription: _f$playstyleDescription,
    #playstylePDescription: _f$playstylePDescription,
    #imagePath: _f$imagePath,
  };

  static PlayStyle _instantiate(DecodingData data) {
    return PlayStyle(
        eaId: data.dec(_f$eaId),
        name: data.dec(_f$name),
        categoryId: data.dec(_f$categoryId),
        whoHasIt: data.dec(_f$whoHasIt),
        playstyleDescription: data.dec(_f$playstyleDescription),
        playstylePDescription: data.dec(_f$playstylePDescription),
        imagePath: data.dec(_f$imagePath));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayStyle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayStyle>(map);
  }

  static PlayStyle fromJson(String json) {
    return ensureInitialized().decodeJson<PlayStyle>(json);
  }
}

mixin PlayStyleMappable {
  String toJson() {
    return PlayStyleMapper.ensureInitialized()
        .encodeJson<PlayStyle>(this as PlayStyle);
  }

  Map<String, dynamic> toMap() {
    return PlayStyleMapper.ensureInitialized()
        .encodeMap<PlayStyle>(this as PlayStyle);
  }

  PlayStyleCopyWith<PlayStyle, PlayStyle, PlayStyle> get copyWith =>
      _PlayStyleCopyWithImpl(this as PlayStyle, $identity, $identity);
  @override
  String toString() {
    return PlayStyleMapper.ensureInitialized()
        .stringifyValue(this as PlayStyle);
  }

  @override
  bool operator ==(Object other) {
    return PlayStyleMapper.ensureInitialized()
        .equalsValue(this as PlayStyle, other);
  }

  @override
  int get hashCode {
    return PlayStyleMapper.ensureInitialized().hashValue(this as PlayStyle);
  }
}

extension PlayStyleValueCopy<$R, $Out> on ObjectCopyWith<$R, PlayStyle, $Out> {
  PlayStyleCopyWith<$R, PlayStyle, $Out> get $asPlayStyle =>
      $base.as((v, t, t2) => _PlayStyleCopyWithImpl(v, t, t2));
}

abstract class PlayStyleCopyWith<$R, $In extends PlayStyle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? eaId,
      String? name,
      int? categoryId,
      String? whoHasIt,
      String? playstyleDescription,
      String? playstylePDescription,
      String? imagePath});
  PlayStyleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayStyleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayStyle, $Out>
    implements PlayStyleCopyWith<$R, PlayStyle, $Out> {
  _PlayStyleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayStyle> $mapper =
      PlayStyleMapper.ensureInitialized();
  @override
  $R call(
          {int? eaId,
          String? name,
          int? categoryId,
          String? whoHasIt,
          String? playstyleDescription,
          String? playstylePDescription,
          String? imagePath}) =>
      $apply(FieldCopyWithData({
        if (eaId != null) #eaId: eaId,
        if (name != null) #name: name,
        if (categoryId != null) #categoryId: categoryId,
        if (whoHasIt != null) #whoHasIt: whoHasIt,
        if (playstyleDescription != null)
          #playstyleDescription: playstyleDescription,
        if (playstylePDescription != null)
          #playstylePDescription: playstylePDescription,
        if (imagePath != null) #imagePath: imagePath
      }));
  @override
  PlayStyle $make(CopyWithData data) => PlayStyle(
      eaId: data.get(#eaId, or: $value.eaId),
      name: data.get(#name, or: $value.name),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      whoHasIt: data.get(#whoHasIt, or: $value.whoHasIt),
      playstyleDescription:
          data.get(#playstyleDescription, or: $value.playstyleDescription),
      playstylePDescription:
          data.get(#playstylePDescription, or: $value.playstylePDescription),
      imagePath: data.get(#imagePath, or: $value.imagePath));

  @override
  PlayStyleCopyWith<$R2, PlayStyle, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayStyleCopyWithImpl($value, $cast, t);
}
