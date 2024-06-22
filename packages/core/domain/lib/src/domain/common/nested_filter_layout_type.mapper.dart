// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nested_filter_layout_type.dart';

class NestedFilterLayoutTypeMapper
    extends ClassMapperBase<NestedFilterLayoutType> {
  NestedFilterLayoutTypeMapper._();

  static NestedFilterLayoutTypeMapper? _instance;
  static NestedFilterLayoutTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NestedFilterLayoutTypeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NestedFilterLayoutType';

  static int _$id(NestedFilterLayoutType v) => v.id;
  static const Field<NestedFilterLayoutType, int> _f$id = Field('id', _$id);
  static String _$name(NestedFilterLayoutType v) => v.name;
  static const Field<NestedFilterLayoutType, String> _f$name =
      Field('name', _$name);

  @override
  final MappableFields<NestedFilterLayoutType> fields = const {
    #id: _f$id,
    #name: _f$name,
  };

  static NestedFilterLayoutType _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('NestedFilterLayoutType');
  }

  @override
  final Function instantiate = _instantiate;

  static NestedFilterLayoutType fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NestedFilterLayoutType>(map);
  }

  static NestedFilterLayoutType fromJson(String json) {
    return ensureInitialized().decodeJson<NestedFilterLayoutType>(json);
  }
}

mixin NestedFilterLayoutTypeMappable {
  String toJson();
  Map<String, dynamic> toMap();
  NestedFilterLayoutTypeCopyWith<NestedFilterLayoutType, NestedFilterLayoutType,
      NestedFilterLayoutType> get copyWith;
}

abstract class NestedFilterLayoutTypeCopyWith<
    $R,
    $In extends NestedFilterLayoutType,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name});
  NestedFilterLayoutTypeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}
