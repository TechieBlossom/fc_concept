// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'foot.dart';

class FootMapper extends EnumMapper<Foot> {
  FootMapper._();

  static FootMapper? _instance;
  static FootMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FootMapper._());
    }
    return _instance!;
  }

  static Foot fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Foot decode(dynamic value) {
    switch (value) {
      case 'right':
        return Foot.right;
      case 'left':
        return Foot.left;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Foot self) {
    switch (self) {
      case Foot.right:
        return 'right';
      case Foot.left:
        return 'left';
    }
  }
}

extension FootMapperExtension on Foot {
  String toValue() {
    FootMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Foot>(this) as String;
  }
}
