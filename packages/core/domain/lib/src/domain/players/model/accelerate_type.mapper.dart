// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'accelerate_type.dart';

class AccelerateTypeMapper extends EnumMapper<AccelerateType> {
  AccelerateTypeMapper._();

  static AccelerateTypeMapper? _instance;
  static AccelerateTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AccelerateTypeMapper._());
    }
    return _instance!;
  }

  static AccelerateType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  AccelerateType decode(dynamic value) {
    switch (value) {
      case 'EXPLOSIVE':
        return AccelerateType.explosive;
      case 'MOSTLY_EXPLOSIVE':
        return AccelerateType.mostlyExplosive;
      case 'CONTROLLED_EXPLOSIVE':
        return AccelerateType.controlledExplosive;
      case 'CONTROLLED':
        return AccelerateType.controlled;
      case 'CONTROLLED_LENGTHY':
        return AccelerateType.controlledLengthy;
      case 'MOSTLY_LENGTHY':
        return AccelerateType.mostlyLengthy;
      case 'LENGTHY':
        return AccelerateType.lengthy;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(AccelerateType self) {
    switch (self) {
      case AccelerateType.explosive:
        return 'EXPLOSIVE';
      case AccelerateType.mostlyExplosive:
        return 'MOSTLY_EXPLOSIVE';
      case AccelerateType.controlledExplosive:
        return 'CONTROLLED_EXPLOSIVE';
      case AccelerateType.controlled:
        return 'CONTROLLED';
      case AccelerateType.controlledLengthy:
        return 'CONTROLLED_LENGTHY';
      case AccelerateType.mostlyLengthy:
        return 'MOSTLY_LENGTHY';
      case AccelerateType.lengthy:
        return 'LENGTHY';
    }
  }
}

extension AccelerateTypeMapperExtension on AccelerateType {
  String toValue() {
    AccelerateTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<AccelerateType>(this) as String;
  }
}
