part of 'role_nested_filter_bloc.dart';

@MappableClass()
class RoleNestedFilterState with RoleNestedFilterStateMappable {
  RoleNestedFilterState({
    this.processState = ProcessState.loading,
    this.rarityNestedFilterPageParams,
    this.roles,
    this.selectedRarities,
  });

  final ProcessState processState;
  final RoleNestedFilterPageParams? rarityNestedFilterPageParams;
  final List<Role>? roles;
  final List<Role>? selectedRarities;
}
