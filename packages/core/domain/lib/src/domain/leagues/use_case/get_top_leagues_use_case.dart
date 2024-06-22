import 'package:core_domain/src/domain/leagues/league_repository.dart';
import 'package:core_domain/src/domain/leagues/model/league.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTopLeaguesUseCase {
  const GetTopLeaguesUseCase(this.leagueRepository);

  final LeagueRepository leagueRepository;

  Future<Result<List<League>>> call() async => leagueRepository.getTopLeagues();
}
