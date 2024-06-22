// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_api_client/src/api_client.dart' as _i5;
import 'package:core_api_client/src/dio/dio_module.dart' as _i6;
import 'package:core_api_client/src/dio_interceptors/api_key_interceptor.dart'
    as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioModule = _$DioModule();
  gh.lazySingleton<_i3.ApiKeyInterceptor>(() => _i3.ApiKeyInterceptor());
  gh.lazySingleton<_i4.Dio>(() => dioModule.dio);
  gh.lazySingleton<_i4.Dio>(
    () => dioModule.dioForImage,
    instanceName: 'dioForImage',
  );
  gh.factory<_i5.ApiClient>(() => _i5.ApiClient(gh<_i4.Dio>()));
  return getIt;
}

class _$DioModule extends _i6.DioModule {}
