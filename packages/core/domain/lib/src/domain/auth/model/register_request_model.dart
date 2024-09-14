class RegisterRequestModel {
  RegisterRequestModel({
    required this.name,
    required this.password,
    required this.email,
  });

  final String name;
  final String email;
  final String password;
}
