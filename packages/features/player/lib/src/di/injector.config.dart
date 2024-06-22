// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_domain/domain.dart' as _i7;
import 'package:feature_player/src/details/bloc/player_detail_bloc.dart' as _i6;
import 'package:feature_player/src/list/presentation/bloc/player_list_bloc.dart'
    as _i8;
import 'package:feature_player/src/navigation/navigator.dart' as _i3;
import 'package:feature_player/src/navigation/routes.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:utility_navigation/navigation.dart' as _i4;

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
  gh.lazySingleton<_i3.PlayerNavigator>(
      () => _i3.PlayerNavigator(gh<_i4.GoRouter>()));
  gh.lazySingleton<_i5.PlayerRoutesConfig>(() => _i5.PlayerRoutesConfig());
  gh.factoryParam<_i6.PlayerDetailBloc, _i7.Player, dynamic>((
    player,
    _,
  ) =>
      _i6.PlayerDetailBloc(
        player,
        gh<_i7.GetPlayerDetailsUseCase>(),
        gh<_i7.GetPlayerVersionsUseCase>(),
        gh<_i7.GetPlayerByVersionUseCase>(),
        gh<_i3.PlayerNavigator>(),
      ));
  gh.factory<_i8.PlayerListBloc>(() => _i8.PlayerListBloc(
        gh<_i7.GetTopPlayerUseCase>(),
        gh<_i7.SearchPlayersUseCase>(),
        gh<_i7.FilterPlayersUseCase>(),
        gh<_i3.PlayerNavigator>(),
      ));
  return getIt;
}
