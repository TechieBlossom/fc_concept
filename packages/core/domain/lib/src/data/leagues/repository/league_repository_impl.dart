import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/leagues/table_league.dart';
import 'package:core_domain/src/domain/leagues/league_repository.dart';
import 'package:core_domain/src/domain/leagues/model/league.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LeagueRepository)
class LeagueRepositoryImpl extends LeagueRepository {
  @override
  Future<Result<List<League>>> getTopLeagues() async {
    try {
      final leaguesResponse = await supabase
          .from(TableLeague.tableLeague)
          .select()
          .eq(TableLeague.isTop, true)
          .order(TableLeague.name, ascending: true);

      final leagues = mapLeagues(leaguesResponse);
      return Success(data: leagues);
    } catch (e, _) {
      return Failure(exception: e as Exception);
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

  List<League> mapLeagues(List<Map<String, dynamic>> leaguesResponse) =>
      leaguesResponse.map(League.fromMap).toList();
}
