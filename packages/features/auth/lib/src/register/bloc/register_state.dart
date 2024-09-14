part of 'register_bloc.dart';

@MappableClass()
class RegisterState with RegisterStateMappable {
  const RegisterState({
    this.name,
    this.email,
    this.password,
    this.isRegisterButtonEnabled = false,
  });

  final String? name;
  final String? email;
  final String? password;
  final bool isRegisterButtonEnabled;
}
