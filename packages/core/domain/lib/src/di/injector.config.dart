// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_domain/src/data/clubs/repository/club_repository_impl.dart'
    as _i6;
import 'package:core_domain/src/data/leagues/repository/league_repository_impl.dart'
    as _i4;
import 'package:core_domain/src/data/nations/repository/nation_repository_impl.dart'
    as _i10;
import 'package:core_domain/src/data/players/repository/player_repository_impl.dart'
    as _i12;
import 'package:core_domain/src/data/rarities/repository/rarity_repository_impl.dart'
    as _i8;
import 'package:core_domain/src/domain/clubs/club_repository.dart' as _i5;
import 'package:core_domain/src/domain/clubs/use_case/get_clubs_by_league_use_case.dart'
    as _i15;
import 'package:core_domain/src/domain/leagues/league_repository.dart' as _i3;
import 'package:core_domain/src/domain/leagues/use_case/get_other_leagues_use_case.dart'
    as _i13;
import 'package:core_domain/src/domain/leagues/use_case/get_top_leagues_use_case.dart'
    as _i14;
import 'package:core_domain/src/domain/nations/nation_repository.dart' as _i9;
import 'package:core_domain/src/domain/nations/use_case/get_other_nations_use_case.dart'
    as _i17;
import 'package:core_domain/src/domain/nations/use_case/get_top_nations_use_case.dart'
    as _i16;
import 'package:core_domain/src/domain/players/player_repository.dart' as _i11;
import 'package:core_domain/src/domain/players/use_case/filter_players_use_case.dart'
    as _i20;
import 'package:core_domain/src/domain/players/use_case/get_player_by_version_use_case.dart'
    as _i21;
import 'package:core_domain/src/domain/players/use_case/get_player_details_use_case.dart'
    as _i22;
import 'package:core_domain/src/domain/players/use_case/get_player_versions_use_case.dart'
    as _i23;
import 'package:core_domain/src/domain/players/use_case/get_top_players_use_case.dart'
    as _i24;
import 'package:core_domain/src/domain/players/use_case/search_players_use_case.dart'
    as _i19;
import 'package:core_domain/src/domain/rarity/rarity_repository.dart' as _i7;
import 'package:core_domain/src/domain/rarity/use_case/get_all_rarities.dart'
    as _i18;
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
  gh.factory<_i3.LeagueRepository>(() => _i4.LeagueRepositoryImpl());
  gh.factory<_i5.ClubRepository>(() => _i6.ClubRepositoryImpl());
  gh.factory<_i7.RarityRepository>(() => _i8.RarityRepositoryImpl());
  gh.factory<_i9.NationRepository>(() => _i10.NationRepositoryImpl());
  gh.factory<_i11.PlayerRepository>(() => _i12.PlayerRepositoryImpl());
  gh.factory<_i13.GetOtherLeaguesUseCase>(
      () => _i13.GetOtherLeaguesUseCase(gh<_i3.LeagueRepository>()));
  gh.factory<_i14.GetTopLeaguesUseCase>(
      () => _i14.GetTopLeaguesUseCase(gh<_i3.LeagueRepository>()));
  gh.factory<_i15.GetClubsByLeagueUseCase>(
      () => _i15.GetClubsByLeagueUseCase(gh<_i5.ClubRepository>()));
  gh.factory<_i16.GetTopNationsUseCase>(
      () => _i16.GetTopNationsUseCase(gh<_i9.NationRepository>()));
  gh.factory<_i17.GetOtherNationsUseCase>(
      () => _i17.GetOtherNationsUseCase(gh<_i9.NationRepository>()));
  gh.factory<_i18.GetAllRarities>(
      () => _i18.GetAllRarities(gh<_i7.RarityRepository>()));
  gh.factory<_i19.SearchPlayersUseCase>(
      () => _i19.SearchPlayersUseCase(gh<_i11.PlayerRepository>()));
  gh.factory<_i20.FilterPlayersUseCase>(
      () => _i20.FilterPlayersUseCase(gh<_i11.PlayerRepository>()));
  gh.factory<_i21.GetPlayerByVersionUseCase>(
      () => _i21.GetPlayerByVersionUseCase(gh<_i11.PlayerRepository>()));
  gh.factory<_i22.GetPlayerDetailsUseCase>(
      () => _i22.GetPlayerDetailsUseCase(gh<_i11.PlayerRepository>()));
  gh.factory<_i23.GetPlayerVersionsUseCase>(
      () => _i23.GetPlayerVersionsUseCase(gh<_i11.PlayerRepository>()));
  gh.factory<_i24.GetTopPlayerUseCase>(
      () => _i24.GetTopPlayerUseCase(gh<_i11.PlayerRepository>()));
  return getIt;
}
