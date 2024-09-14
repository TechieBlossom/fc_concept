part of 'login_bloc.dart';

@MappableClass()
class LoginState with LoginStateMappable {
  const LoginState({
    this.email = 'sharma.prateek1712@gmail.com',
    this.password = 'Ganesha1712!@#',
    this.isSignButtonEnabled = true,
  });

  final String? email;
  final String? password;
  final bool isSignButtonEnabled;
}
