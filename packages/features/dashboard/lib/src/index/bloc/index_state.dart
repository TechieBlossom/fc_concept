part of 'index_bloc.dart';

@MappableClass()
class IndexState with IndexStateMappable {
  IndexState({
    this.values,
    this.min,
    this.max,
    this.interval,
    this.processState = ProcessState.loading,
  });

  final ProcessState? processState;
  final List<double>? values;
  final double? min;
  final double? max;
  final double? interval;
}
