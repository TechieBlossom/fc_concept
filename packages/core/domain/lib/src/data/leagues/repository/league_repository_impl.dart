import 'package:cached_annotation/cached_annotation.dart';
import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/leagues/table_league.dart';
import 'package:core_domain/src/domain/leagues/league_repository.dart';
import 'package:core_domain/src/domain/leagues/model/league.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';

part 'league_repository_impl.cached.dart';

const _cacheTTL = 30 * 24 * 60; // 30 days

@Injectable(as: LeagueRepository)
@WithCache()
abstract mixin class LeagueRepositoryImpl
    implements LeagueRepository, _$LeagueRepositoryImpl {
  @factoryMethod
  factory LeagueRepositoryImpl() = _LeagueRepositoryImpl;

  @override
  Future<Result<List<League>>> getTopLeagues() async {
    try {
      final rawResponse = await _getTopLeagues();
      final leagues = mapLeagues(rawResponse);
      return Success(data: leagues);
    } catch (e, _) {
      print(e);
      return Failure(exception: Exception());
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getTopLeagues() async {
    try {
      final leaguesResponse = await supabase
          .from(TableLeague.tableLeague)
          .select()
          .eq(TableLeague.isTop, true)
          .order(TableLeague.name, ascending: true);

      return leaguesResponse;
    } catch (e, s) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<Result<List<League>>> getOtherLeagues() async {
    try {
      final leaguesResponse = await supabase
          .from(TableLeague.tableLeague)
          .select()
          .eq(TableLeague.isTop, false)
          .order(TableLeague.name, ascending: true);

      final leagues = mapLeagues(leaguesResponse);
      return Success(data: leagues);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<League> mapLeagues(List<dynamic> leaguesResponse) {
    return leaguesResponse.map((value) => League.fromMap(value as Map<String, dynamic>)).toList();
  }
}
