part of 'dashboard_bloc.dart';

@MappableClass()
class DashboardState with DashboardStateMappable {
  DashboardState({
    this.processState = ProcessState.loading,
    this.indexes,
  });

  final ProcessState processState;
  final List<IndexData>? indexes;
}
