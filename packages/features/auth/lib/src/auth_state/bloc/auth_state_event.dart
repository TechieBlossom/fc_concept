part of 'auth_state_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class AuthStateEvent with AuthStateEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends AuthStateEvent with InitMappable {}

@MappableClass(discriminatorValue: 'signedIn')
class SignedIn extends AuthStateEvent with SignedInMappable {
  SignedIn(this.session);

  final Session? session;
}

@MappableClass(discriminatorValue: 'signedOut')
class SignedOut extends AuthStateEvent with SignedOutMappable {
  SignedOut();
}
