import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ProcessState {
  loading,
  success,
  failure,
  empty,
}
