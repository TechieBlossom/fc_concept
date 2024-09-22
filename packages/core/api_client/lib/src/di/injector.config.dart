// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_api_client/src/api_client.dart' as _i955;
import 'package:core_api_client/src/dio/dio_module.dart' as _i1043;
import 'package:core_api_client/src/dio_interceptors/api_key_interceptor.dart'
    as _i158;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioModule = _$DioModule();
  gh.lazySingleton<_i361.Dio>(() => dioModule.dio);
  gh.lazySingleton<_i158.ApiKeyInterceptor>(() => _i158.ApiKeyInterceptor());
  gh.factory<_i955.ApiClient>(() => _i955.ApiClient(gh<_i361.Dio>()));
  gh.lazySingleton<_i361.Dio>(
    () => dioModule.dioForImage,
    instanceName: 'dioForImage',
  );
  return getIt;
}

class _$DioModule extends _i1043.DioModule {}
