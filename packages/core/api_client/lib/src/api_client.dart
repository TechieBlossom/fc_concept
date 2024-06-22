import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiClient {
  ApiClient(this.dio);

  final Dio dio;
}