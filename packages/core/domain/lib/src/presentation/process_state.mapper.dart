// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'process_state.dart';

class ProcessStateMapper extends EnumMapper<ProcessState> {
  ProcessStateMapper._();

  static ProcessStateMapper? _instance;
  static ProcessStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProcessStateMapper._());
    }
    return _instance!;
  }

  static ProcessState fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ProcessState decode(dynamic value) {
    switch (value) {
      case 'loading':
        return ProcessState.loading;
      case 'success':
        return ProcessState.success;
      case 'failure':
        return ProcessState.failure;
      case 'empty':
        return ProcessState.empty;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ProcessState self) {
    switch (self) {
      case ProcessState.loading:
        return 'loading';
      case ProcessState.success:
        return 'success';
      case ProcessState.failure:
        return 'failure';
      case ProcessState.empty:
        return 'empty';
    }
  }
}

extension ProcessStateMapperExtension on ProcessState {
  String toValue() {
    ProcessStateMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ProcessState>(this) as String;
  }
}
