// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_api_client/api_client.dart' as _i327;
import 'package:core_domain/domain.dart' as _i913;
import 'package:core_domain/src/data/auth/repository/auth_repository_impl.dart'
    as _i937;
import 'package:core_domain/src/data/clubs/repository/club_repository_impl.dart'
    as _i767;
import 'package:core_domain/src/data/leagues/repository/league_repository_impl.dart'
    as _i274;
import 'package:core_domain/src/data/nations/repository/nation_repository_impl.dart'
    as _i245;
import 'package:core_domain/src/data/players/repository/player_repository_impl.dart'
    as _i281;
import 'package:core_domain/src/data/playstyles/repository/play_style_repository_impl.dart'
    as _i926;
import 'package:core_domain/src/data/price/repository/price_repository_impl.dart'
    as _i463;
import 'package:core_domain/src/data/rarities/repository/rarity_repository_impl.dart'
    as _i176;
import 'package:core_domain/src/data/roles/repository/role_repository_impl.dart'
    as _i33;
import 'package:core_domain/src/domain/auth/auth_repository.dart' as _i172;
import 'package:core_domain/src/domain/auth/use_case/get_session_use_case.dart'
    as _i646;
import 'package:core_domain/src/domain/auth/use_case/login_user_use_case.dart'
    as _i1060;
import 'package:core_domain/src/domain/auth/use_case/observe_auth_state_use_case.dart'
    as _i347;
import 'package:core_domain/src/domain/auth/use_case/register_user_use_case.dart'
    as _i429;
import 'package:core_domain/src/domain/auth/use_case/set_session_use_case.dart'
    as _i728;
import 'package:core_domain/src/domain/auth/use_case/sign_out_user_use_case.dart'
    as _i929;
import 'package:core_domain/src/domain/clubs/club_repository.dart' as _i177;
import 'package:core_domain/src/domain/clubs/use_case/get_clubs_by_league_use_case.dart'
    as _i1022;
import 'package:core_domain/src/domain/leagues/league_repository.dart' as _i191;
import 'package:core_domain/src/domain/leagues/use_case/get_other_leagues_use_case.dart'
    as _i739;
import 'package:core_domain/src/domain/leagues/use_case/get_top_leagues_use_case.dart'
    as _i439;
import 'package:core_domain/src/domain/nations/nation_repository.dart' as _i829;
import 'package:core_domain/src/domain/nations/use_case/get_other_nations_use_case.dart'
    as _i847;
import 'package:core_domain/src/domain/nations/use_case/get_top_nations_use_case.dart'
    as _i491;
import 'package:core_domain/src/domain/play_styles/play_style_repository.dart'
    as _i73;
import 'package:core_domain/src/domain/play_styles/use_case/get_all_play_styles_use_case.dart'
    as _i781;
import 'package:core_domain/src/domain/play_styles/use_case/get_play_styles_by_ids_use_case.dart'
    as _i1017;
import 'package:core_domain/src/domain/players/player_repository.dart' as _i294;
import 'package:core_domain/src/domain/players/use_case/filter_players_use_case.dart'
    as _i120;
import 'package:core_domain/src/domain/players/use_case/get_player_by_version_use_case.dart'
    as _i216;
import 'package:core_domain/src/domain/players/use_case/get_player_count_use_case.dart'
    as _i394;
import 'package:core_domain/src/domain/players/use_case/get_player_details_use_case.dart'
    as _i75;
import 'package:core_domain/src/domain/players/use_case/get_player_versions_use_case.dart'
    as _i77;
import 'package:core_domain/src/domain/players/use_case/get_popular_players_use_case.dart'
    as _i885;
import 'package:core_domain/src/domain/players/use_case/get_top_players_use_case.dart'
    as _i380;
import 'package:core_domain/src/domain/players/use_case/search_players_use_case.dart'
    as _i354;
import 'package:core_domain/src/domain/price/price_repository.dart' as _i526;
import 'package:core_domain/src/domain/price/use_case/get_player_price_use_case.dart'
    as _i282;
import 'package:core_domain/src/domain/rarity/rarity_repository.dart' as _i52;
import 'package:core_domain/src/domain/rarity/use_case/get_all_rarities.dart'
    as _i1054;
import 'package:core_domain/src/domain/roles/role_repository.dart' as _i907;
import 'package:core_domain/src/domain/roles/use_case/get_all_roles_use_case.dart'
    as _i651;
import 'package:core_domain/src/domain/roles/use_case/get_roles_by_ids_use_case.dart'
    as _i1000;
import 'package:core_domain/src/presentation/metadata/metadata_bloc.dart'
    as _i809;
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
  gh.factory<_i1000.GetRolesByIdsUseCase>(
      () => const _i1000.GetRolesByIdsUseCase());
  gh.factory<_i1017.GetPlayStylesByIdsUseCase>(
      () => const _i1017.GetPlayStylesByIdsUseCase());
  gh.factory<_i191.LeagueRepository>(() => _i274.LeagueRepositoryImpl());
  gh.factory<_i177.ClubRepository>(() => _i767.ClubRepositoryImpl());
  gh.factory<_i73.PlayStyleRepository>(() => _i926.PlayStyleRepositoryImpl());
  gh.factory<_i526.PriceRepository>(
      () => _i463.PriceRepositoryImpl(gh<_i327.ApiClient>()));
  gh.factory<_i781.GetAllPlayStylesUseCase>(
      () => _i781.GetAllPlayStylesUseCase(gh<_i73.PlayStyleRepository>()));
  gh.factory<_i52.RarityRepository>(() => _i176.RarityRepositoryImpl());
  gh.factory<_i172.AuthRepository>(() => _i937.AuthRepositoryImpl());
  gh.factory<_i907.RoleRepository>(() => _i33.RoleRepositoryImpl());
  gh.factory<_i429.RegisterUserUseCase>(
      () => _i429.RegisterUserUseCase(gh<_i172.AuthRepository>()));
  gh.factory<_i1060.LoginUserUseCase>(
      () => _i1060.LoginUserUseCase(gh<_i172.AuthRepository>()));
  gh.factory<_i347.ObserveAuthStateUseCase>(
      () => _i347.ObserveAuthStateUseCase(gh<_i172.AuthRepository>()));
  gh.factory<_i829.NationRepository>(() => _i245.NationRepositoryImpl());
  gh.factory<_i294.PlayerRepository>(() => _i281.PlayerRepositoryImpl());
  gh.factory<_i282.GetPlayerPriceUseCase>(
      () => _i282.GetPlayerPriceUseCase(gh<_i526.PriceRepository>()));
  gh.factory<_i739.GetOtherLeaguesUseCase>(
      () => _i739.GetOtherLeaguesUseCase(gh<_i191.LeagueRepository>()));
  gh.factory<_i439.GetTopLeaguesUseCase>(
      () => _i439.GetTopLeaguesUseCase(gh<_i191.LeagueRepository>()));
  gh.factory<_i651.GetAllRolesUseCase>(
      () => _i651.GetAllRolesUseCase(gh<_i907.RoleRepository>()));
  gh.factory<_i1022.GetClubsByLeagueUseCase>(
      () => _i1022.GetClubsByLeagueUseCase(gh<_i177.ClubRepository>()));
  gh.factory<_i491.GetTopNationsUseCase>(
      () => _i491.GetTopNationsUseCase(gh<_i829.NationRepository>()));
  gh.factory<_i847.GetOtherNationsUseCase>(
      () => _i847.GetOtherNationsUseCase(gh<_i829.NationRepository>()));
  gh.factory<_i1054.GetAllRarities>(
      () => _i1054.GetAllRarities(gh<_i52.RarityRepository>()));
  gh.lazySingleton<_i809.MetadataBloc>(() => _i809.MetadataBloc(
        gh<_i913.GetAllRolesUseCase>(),
        gh<_i913.GetAllPlayStylesUseCase>(),
      ));
  gh.factory<_i646.GetSessionUseCase>(
      () => _i646.GetSessionUseCase(gh<_i172.AuthRepository>()));
  gh.factory<_i728.SetSessionUseCase>(
      () => _i728.SetSessionUseCase(gh<_i172.AuthRepository>()));
  gh.factory<_i929.SignOutUserUseCase>(
      () => _i929.SignOutUserUseCase(gh<_i172.AuthRepository>()));
  gh.factory<_i394.GetPlayerCountUseCase>(
      () => _i394.GetPlayerCountUseCase(gh<_i294.PlayerRepository>()));
  gh.factory<_i354.SearchPlayersUseCase>(
      () => _i354.SearchPlayersUseCase(gh<_i294.PlayerRepository>()));
  gh.factory<_i120.FilterPlayersUseCase>(
      () => _i120.FilterPlayersUseCase(gh<_i294.PlayerRepository>()));
  gh.factory<_i216.GetPlayerByVersionUseCase>(
      () => _i216.GetPlayerByVersionUseCase(gh<_i294.PlayerRepository>()));
  gh.factory<_i75.GetPlayerDetailsUseCase>(
      () => _i75.GetPlayerDetailsUseCase(gh<_i294.PlayerRepository>()));
  gh.factory<_i77.GetPlayerVersionsUseCase>(
      () => _i77.GetPlayerVersionsUseCase(gh<_i294.PlayerRepository>()));
  gh.factory<_i885.GetPopularPlayerUseCase>(
      () => _i885.GetPopularPlayerUseCase(gh<_i294.PlayerRepository>()));
  gh.factory<_i380.GetTopPlayerUseCase>(
      () => _i380.GetTopPlayerUseCase(gh<_i294.PlayerRepository>()));
  return getIt;
}
