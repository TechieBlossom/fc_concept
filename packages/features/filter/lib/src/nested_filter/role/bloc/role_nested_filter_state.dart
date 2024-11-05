part of 'role_nested_filter_bloc.dart';

@MappableClass()
class RoleNestedFilterState with RoleNestedFilterStateMappable {
  RoleNestedFilterState({
    this.processState = ProcessState.success,
    this.roleNestedFilterPageParams,
    this.roles = const [],
    this.selectedRoles,
  });

  final ProcessState processState;
  final RoleNestedFilterPageParams? roleNestedFilterPageParams;
  final List<Role> roles;
  final List<Role>? selectedRoles;

  Map<String, List<Role>> get rolesByPosition => groupBy<Role, String>(
        roles,
        (role) => role.fullPositionName,
      );
}
