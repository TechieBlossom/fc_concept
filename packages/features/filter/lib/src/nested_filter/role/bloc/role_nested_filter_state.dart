part of 'role_nested_filter_bloc.dart';

@MappableClass()
class RoleNestedFilterState with RoleNestedFilterStateMappable {
  RoleNestedFilterState({
    this.processState = ProcessState.success,
    this.roleNestedFilterPageParams,
    this.roles,
    this.selectedRoles,
  });

  final ProcessState processState;
  final RoleNestedFilterPageParams? roleNestedFilterPageParams;
  final List<Role>? roles;
  final List<Role>? selectedRoles;
}
