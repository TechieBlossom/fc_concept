part of 'register_bloc.dart';

@MappableClass(discriminatorKey: 'registerEvent')
abstract class RegisterEvent with RegisterEventMappable {
  const RegisterEvent();
}

@MappableClass(discriminatorValue: 'register')
class Register extends RegisterEvent with RegisterMappable {
  const Register();
}

@MappableClass(discriminatorValue: 'alreadyAUserTap')
class AlreadyAUserTap extends RegisterEvent with AlreadyAUserTapMappable {
  const AlreadyAUserTap();
}

@MappableClass(discriminatorValue: 'nameUpdate')
class NameUpdate extends RegisterEvent with NameUpdateMappable {
  const NameUpdate(this.name);

  final String name;
}

@MappableClass(discriminatorValue: 'emailUpdate')
class EmailUpdate extends RegisterEvent with EmailUpdateMappable {
  const EmailUpdate(this.email);

  final String email;
}

@MappableClass(discriminatorValue: 'passwordUpdate')
class PasswordUpdate extends RegisterEvent with PasswordUpdateMappable {
  const PasswordUpdate(this.password);

  final String password;
}

@MappableClass(discriminatorValue: 'termsConditionTap')
class TermsConditionTap extends RegisterEvent with TermsConditionTapMappable {
  const TermsConditionTap(this.password);

  final String password;
}