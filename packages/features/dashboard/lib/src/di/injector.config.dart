// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_domain/domain.dart' as _i913;
import 'package:feature_dashboard/dashboard.dart' as _i657;
import 'package:feature_dashboard/src/dashboard/bloc/dashboard_bloc.dart'
    as _i432;
import 'package:feature_dashboard/src/navigation/navigator.dart' as _i577;
import 'package:feature_dashboard/src/navigation/routes.dart' as _i323;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:utility_navigation/navigation.dart' as _i177;

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
  gh.lazySingleton<_i323.DashboardRoutesConfig>(
      () => _i323.DashboardRoutesConfig());
  gh.lazySingleton<_i577.DashboardNavigator>(
      () => _i577.DashboardNavigator(gh<_i177.GoRouter>()));
  gh.factory<_i432.DashboardBloc>(() => _i432.DashboardBloc(
        gh<_i913.GetIndexDataUseCase>(),
        gh<_i913.GetPlayerOldPricesUseCase>(),
        gh<_i913.GetSbcPlayersUseCase>(),
        gh<_i913.GetPositionalPlayersUseCase>(),
        gh<_i913.GetTrendingPlayersUseCase>(),
        gh<_i913.GetUniqueRaritySquads>(),
        gh<_i657.DashboardNavigator>(),
      ));
  return getIt;
}
