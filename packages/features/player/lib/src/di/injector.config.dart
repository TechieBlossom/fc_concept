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
import 'package:feature_player/src/list/presentation/model/player_list_type.dart'
    as _i388;
import 'package:feature_player/src/navigation/navigator.dart' as _i777;
import 'package:feature_player/src/navigation/routes.dart' as _i445;
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
  gh.factoryParam<_i1047.PlayerDetailBloc, _i913.Player, dynamic>((
    player,
    _,
  ) =>
      _i1047.PlayerDetailBloc(
        player,
        gh<_i913.GetPlayerDetailsUseCase>(),
        gh<_i913.GetPlayerVersionsUseCase>(),
        gh<_i913.GetPlayerByVersionUseCase>(),
        gh<_i777.PlayerNavigator>(),
      ));
  gh.factoryParam<_i388.PlayerListBloc, _i388.PlayerListType, dynamic>((
    playerListType,
    _,
  ) =>
      _i388.PlayerListBloc(
        playerListType,
        gh<_i913.GetTopPlayerUseCase>(),
        gh<_i913.GetPopularPlayerUseCase>(),
        gh<_i913.SearchPlayersUseCase>(),
        gh<_i913.FilterPlayersUseCase>(),
        gh<_i777.PlayerNavigator>(),
      ));
  return getIt;
}
