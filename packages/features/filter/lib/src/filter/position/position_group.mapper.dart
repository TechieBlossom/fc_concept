// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'position_group.dart';

class PositionGroupMapper extends EnumMapper<PositionGroup> {
  PositionGroupMapper._();

  static PositionGroupMapper? _instance;
  static PositionGroupMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PositionGroupMapper._());
    }
    return _instance!;
  }

  static PositionGroup fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PositionGroup decode(dynamic value) {
    switch (value) {
      case 'Attackers':
        return PositionGroup.attackers;
      case 'Midfielders':
        return PositionGroup.midfielders;
      case 'Defenders':
        return PositionGroup.defenders;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PositionGroup self) {
    switch (self) {
      case PositionGroup.attackers:
        return 'Attackers';
      case PositionGroup.midfielders:
        return 'Midfielders';
      case PositionGroup.defenders:
        return 'Defenders';
    }
  }
}

extension PositionGroupMapperExtension on PositionGroup {
  String toValue() {
    PositionGroupMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PositionGroup>(this) as String;
  }
}
