import 'package:dart_mappable/dart_mappable.dart';


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
