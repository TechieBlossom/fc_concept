import 'package:core_domain/src/domain/leagues/model/league.dart';
import 'package:core_domain/src/domain/models/result.dart';

abstract class LeagueRepository {
  Future<Result<List<League>>> getOtherLeagues();
  @Deprecated('Filter to get top leagues not available yet')
  Future<Result<List<League>>> getTopLeagues();
}
