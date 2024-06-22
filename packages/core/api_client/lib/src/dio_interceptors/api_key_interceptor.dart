import 'package:core_api_client/src/secrets/secrets.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiKeyInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['X-AUTH-TOKEN'] = futApiKey;

    super.onRequest(options, handler);
  }
}
