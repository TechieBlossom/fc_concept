part of 'roles_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class RolesEvent with RolesEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends RolesEvent with InitMappable {}