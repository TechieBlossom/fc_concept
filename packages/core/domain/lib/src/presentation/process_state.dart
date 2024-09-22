import 'package:dart_mappable/dart_mappable.dart';

part 'process_state.mapper.dart';

@MappableEnum()
enum ProcessState {
  loading,
  success,
  failure,
  empty,
}
