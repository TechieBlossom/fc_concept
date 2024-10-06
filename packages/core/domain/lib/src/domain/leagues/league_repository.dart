import 'package:core_domain/src/domain/leagues/model/league.dart';
import 'package:core_domain/src/domain/models/result.dart';

abstract class LeagueRepository {
  Future<Result<List<League>>> getOtherLeagues();
  Future<Result<List<League>>> getTopLeagues();
}
