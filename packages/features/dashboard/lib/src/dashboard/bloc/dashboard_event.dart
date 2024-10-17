part of 'dashboard_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class DashboardEvent with DashboardEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends DashboardEvent with InitMappable {}