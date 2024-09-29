part of 'roles_bloc.dart';

@MappableClass()
class RolesState with RolesStateMappable {
  RolesState({
    this.roles = const [],
  });

  final List<Role> roles;
}
