// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_domain/domain.dart' as _i913;
import 'package:feature_compare/compare.dart' as _i534;
import 'package:feature_menu/src/menu/bloc/menu_bloc.dart' as _i929;
import 'package:feature_menu/src/navigator/navigator.dart' as _i725;
import 'package:feature_menu/src/navigator/routes.dart' as _i838;
import 'package:feature_player/player.dart' as _i460;
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
  gh.lazySingleton<_i838.DashboardRoutesConfig>(
    () => _i838.DashboardRoutesConfig(),
  );
  gh.lazySingleton<_i725.MenuNavigator>(
    () => _i725.MenuNavigator(gh<_i177.GoRouter>()),
  );
  gh.factory<_i929.MenuBloc>(
    () => _i929.MenuBloc(
      gh<_i534.CompareNavigator>(),
      gh<_i460.PlayerNavigator>(),
      gh<_i913.GetPlayerCountUseCase>(),
      gh<_i725.MenuNavigator>(),
    ),
  );
  return getIt;
}
