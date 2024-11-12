// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_domain/domain.dart' as _i913;
import 'package:feature_player/src/details/bloc/player_detail_bloc.dart'
    as _i1047;
import 'package:feature_player/src/list/presentation/bloc/player_list_bloc.dart'
    as _i388;
import 'package:feature_player/src/navigation/navigator.dart' as _i777;
import 'package:feature_player/src/navigation/routes.dart' as _i445;
import 'package:feature_player/src/rating/bloc/players_list_by_rating_bloc.dart'
    as _i792;
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
  gh.lazySingleton<_i445.PlayerRoutesConfig>(() => _i445.PlayerRoutesConfig());
  gh.lazySingleton<_i777.PlayerNavigator>(
      () => _i777.PlayerNavigator(gh<_i177.GoRouter>()));
  gh.factory<_i388.PlayerListBloc>(() => _i388.PlayerListBloc(
        gh<_i913.GetTopPlayerUseCase>(),
        gh<_i913.FilterPlayersUseCase>(),
        gh<_i777.PlayerNavigator>(),
      ));
  gh.factory<_i792.PlayersListByRatingBloc>(() => _i792.PlayersListByRatingBloc(
        gh<_i913.GetCheapestPlayersByRatingUseCase>(),
        gh<_i777.PlayerNavigator>(),
      ));
  gh.factoryParam<_i1047.PlayerDetailBloc, _i1047.PlayerDetailBlocParams,
      dynamic>((
    params,
    _,
  ) =>
      _i1047.PlayerDetailBloc(
        params,
        gh<_i913.GetPlayerDetailsUseCase>(),
        gh<_i913.GetPlayerVersionsUseCase>(),
        gh<_i913.GetRolesByIdsUseCase>(),
        gh<_i913.GetPlayStylesByIdsUseCase>(),
        gh<_i913.GetPlayerPriceUseCase>(),
        gh<_i913.GetPositionsByIdsUseCase>(),
        gh<_i913.GetChemistryBoostFaceValuesUseCase>(),
        gh<_i913.GetChemistryBoostFaceValuesGkUseCase>(),
        gh<_i913.NormalizeChemistryBoostUseCase>(),
        gh<_i777.PlayerNavigator>(),
      ));
  return getIt;
}
