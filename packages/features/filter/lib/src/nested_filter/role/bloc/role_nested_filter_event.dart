part of 'role_nested_filter_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class RoleNestedFilterEvent with RoleNestedFilterEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends RoleNestedFilterEvent with InitMappable {}

@MappableClass(discriminatorValue: 'selectRole')
class SelectRole extends RoleNestedFilterEvent with SelectRoleMappable {
  SelectRole({
    required this.item,
  });

  final Role item;
}

@MappableClass(discriminatorValue: 'done')
class Done extends RoleNestedFilterEvent with DoneMappable {}

@MappableClass(discriminatorValue: 'clear')
class Clear extends RoleNestedFilterEvent with ClearMappable {}
