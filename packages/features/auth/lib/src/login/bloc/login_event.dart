part of 'login_bloc.dart';

@MappableClass(discriminatorKey: 'loginEvent')
abstract class LoginEvent with LoginEventMappable {
  const LoginEvent();
}

@MappableClass(discriminatorValue: 'createAccountTap')
class CreateAccountTap extends LoginEvent with CreateAccountTapMappable {
  const CreateAccountTap();
}

@MappableClass(discriminatorValue: 'signInTap')
class SignInTap extends LoginEvent with SignInTapMappable {
  const SignInTap();
}

@MappableClass(discriminatorValue: 'emailUpdate')
class EmailUpdate extends LoginEvent with EmailUpdateMappable {
  const EmailUpdate(this.email);

  final String email;
}

@MappableClass(discriminatorValue: 'passwordUpdate')
class PasswordUpdate extends LoginEvent with PasswordUpdateMappable {
  const PasswordUpdate(this.password);

  final String password;
}