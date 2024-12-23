part of 'index_bloc.dart';

@MappableClass()
class IndexState with IndexStateMappable {
  IndexState({
    this.entries,
    this.min,
    this.max,
    this.interval,
    this.current,
    this.previous,
    this.hoveredIndexData,
    this.processState = ProcessState.loading,
  });

  final ProcessState? processState;
  final List<IndexData>? entries;
  final double? min;
  final double? max;
  final double? interval;
  final double? current;
  final double? previous;
  final double? hoveredIndexData;
}
