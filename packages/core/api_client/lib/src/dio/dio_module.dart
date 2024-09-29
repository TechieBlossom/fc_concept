import 'package:core_api_client/src/dio_interceptors/api_key_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_di/di.dart';

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
