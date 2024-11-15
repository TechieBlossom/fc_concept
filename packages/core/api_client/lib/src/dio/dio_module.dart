import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@module
abstract class DioModule {
  @lazySingleton
  Future<Dio> get dio async {
    final dir = await getApplicationCacheDirectory();
    final cacheOptions = CacheOptions(
      store: HiveCacheStore('${dir.path}/dio_caching'),
      maxStale: const Duration(hours: 1),
    );
    return Dio(
      BaseOptions(
        baseUrl: 'https://www.fut.gg/api',
        contentType: Headers.jsonContentType,
      ),
    )..interceptors.addAll(
        [
          LogInterceptor(),
          DioCacheInterceptor(options: cacheOptions),
        ],
      );
  }
}
