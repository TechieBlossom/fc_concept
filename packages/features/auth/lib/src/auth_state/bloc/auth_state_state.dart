part of 'auth_state_bloc.dart';

@MappableClass()
class AuthStateState with AuthStateStateMappable {
  const AuthStateState({
    this.session,
  });

  final Session? session;
}
