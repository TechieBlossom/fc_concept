// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fc_concept/navigation/auth_guard_observer.dart' as _i4;
import 'package:fc_concept/navigation/navigation_module.dart' as _i7;
import 'package:fc_concept/navigation/routes_config.dart' as _i3;
import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:utility_navigation/navigation.dart' as _i6;

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
  final navigationModule = _$NavigationModule();
  gh.lazySingleton<_i3.AppRoutesConfig>(() => _i3.AppRoutesConfig());
  gh.factory<_i4.AuthGuardObserver>(
      () => _i4.AuthGuardObserver(gh<_i5.GlobalKey<_i5.NavigatorState>>()));
  gh.lazySingleton<_i6.GoRouter>(() => navigationModule.goRouter);
  return getIt;
}

class _$NavigationModule extends _i7.NavigationModule {}
