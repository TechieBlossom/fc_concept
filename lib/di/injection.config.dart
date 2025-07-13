// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fut_maidaan/navigation/navigation_module.dart' as _i962;
import 'package:fut_maidaan/navigation/routes_config.dart' as _i755;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:utility_navigation/navigation.dart' as _i177;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final navigationModule = _$NavigationModule();
  gh.lazySingleton<_i755.AppRoutesConfig>(() => _i755.AppRoutesConfig());
  gh.lazySingleton<_i177.GoRouter>(() => navigationModule.goRouter);
  return getIt;
}

class _$NavigationModule extends _i962.NavigationModule {}
