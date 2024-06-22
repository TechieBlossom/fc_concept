// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'work_rate.dart';

class WorkRateMapper extends EnumMapper<WorkRate> {
  WorkRateMapper._();

  static WorkRateMapper? _instance;
  static WorkRateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorkRateMapper._());
    }
    return _instance!;
  }

  static WorkRate fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  WorkRate decode(dynamic value) {
    switch (value) {
      case 'low':
        return WorkRate.low;
      case 'medium':
        return WorkRate.medium;
      case 'high':
        return WorkRate.high;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(WorkRate self) {
    switch (self) {
      case WorkRate.low:
        return 'low';
      case WorkRate.medium:
        return 'medium';
      case WorkRate.high:
        return 'high';
    }
  }
}

extension WorkRateMapperExtension on WorkRate {
  String toValue() {
    WorkRateMapper.ensureInitialized();
    return MapperContainer.globals.toValue<WorkRate>(this) as String;
  }
}
