import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: 'https://www.fut.gg/api',
          contentType: Headers.jsonContentType,
        ),
      )..interceptors.addAll([LogInterceptor()]);
}
