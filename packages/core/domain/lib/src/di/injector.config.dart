// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_domain/src/data/clubs/repository/club_repository_impl.dart'
    as _i4;
import 'package:core_domain/src/data/leagues/repository/league_repository_impl.dart'
    as _i7;
import 'package:core_domain/src/data/nations/repository/nation_repository_impl.dart'
    as _i9;
import 'package:core_domain/src/data/players/repository/player_repository_impl.dart'
    as _i11;
import 'package:core_domain/src/data/rarities/repository/rarity_repository_impl.dart'
    as _i13;
import 'package:core_domain/src/domain/clubs/club_repository.dart' as _i3;
import 'package:core_domain/src/domain/clubs/use_case/get_clubs_by_league_use_case.dart'
    as _i5;
import 'package:core_domain/src/domain/leagues/league_repository.dart' as _i6;
import 'package:core_domain/src/domain/leagues/use_case/get_other_leagues_use_case.dart'
    as _i17;
import 'package:core_domain/src/domain/leagues/use_case/get_top_leagues_use_case.dart'
    as _i22;
import 'package:core_domain/src/domain/nations/nation_repository.dart' as _i8;
import 'package:core_domain/src/domain/nations/use_case/get_other_nations_use_case.dart'
    as _i18;
import 'package:core_domain/src/domain/nations/use_case/get_top_nations_use_case.dart'
    as _i23;
import 'package:core_domain/src/domain/players/player_repository.dart' as _i10;
import 'package:core_domain/src/domain/players/use_case/filter_players_use_case.dart'
    as _i15;
import 'package:core_domain/src/domain/players/use_case/get_player_by_version_use_case.dart'
    as _i19;
import 'package:core_domain/src/domain/players/use_case/get_player_details_use_case.dart'
    as _i20;
import 'package:core_domain/src/domain/players/use_case/get_player_versions_use_case.dart'
    as _i21;
import 'package:core_domain/src/domain/players/use_case/get_top_players_use_case.dart'
    as _i24;
import 'package:core_domain/src/domain/players/use_case/search_players_use_case.dart'
    as _i14;
import 'package:core_domain/src/domain/rarity/rarity_repository.dart' as _i12;
import 'package:core_domain/src/domain/rarity/use_case/get_all_rarities.dart'
    as _i16;
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
  gh.factory<_i3.ClubRepository>(() => _i4.ClubRepositoryImpl());
  gh.factory<_i5.GetClubsByLeagueUseCase>(
      () => _i5.GetClubsByLeagueUseCase(gh<_i3.ClubRepository>()));
  gh.factory<_i6.LeagueRepository>(() => _i7.LeagueRepositoryImpl());
  gh.factory<_i8.NationRepository>(() => _i9.NationRepositoryImpl());
  gh.factory<_i10.PlayerRepository>(() => _i11.PlayerRepositoryImpl());
  gh.factory<_i12.RarityRepository>(() => _i13.RarityRepositoryImpl());
  gh.factory<_i14.SearchPlayersUseCase>(
      () => _i14.SearchPlayersUseCase(gh<_i10.PlayerRepository>()));
  gh.factory<_i15.FilterPlayersUseCase>(
      () => _i15.FilterPlayersUseCase(gh<_i10.PlayerRepository>()));
  gh.factory<_i16.GetAllRarities>(
      () => _i16.GetAllRarities(gh<_i12.RarityRepository>()));
  gh.factory<_i17.GetOtherLeaguesUseCase>(
      () => _i17.GetOtherLeaguesUseCase(gh<_i6.LeagueRepository>()));
  gh.factory<_i18.GetOtherNationsUseCase>(
      () => _i18.GetOtherNationsUseCase(gh<_i8.NationRepository>()));
  gh.factory<_i19.GetPlayerByVersionUseCase>(
      () => _i19.GetPlayerByVersionUseCase(gh<_i10.PlayerRepository>()));
  gh.factory<_i20.GetPlayerDetailsUseCase>(
      () => _i20.GetPlayerDetailsUseCase(gh<_i10.PlayerRepository>()));
  gh.factory<_i21.GetPlayerVersionsUseCase>(
      () => _i21.GetPlayerVersionsUseCase(gh<_i10.PlayerRepository>()));
  gh.factory<_i22.GetTopLeaguesUseCase>(
      () => _i22.GetTopLeaguesUseCase(gh<_i6.LeagueRepository>()));
  gh.factory<_i23.GetTopNationsUseCase>(
      () => _i23.GetTopNationsUseCase(gh<_i8.NationRepository>()));
  gh.factory<_i24.GetTopPlayerUseCase>(
      () => _i24.GetTopPlayerUseCase(gh<_i10.PlayerRepository>()));
  return getIt;
}
