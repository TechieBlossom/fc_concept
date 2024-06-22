import 'package:core_domain/src/domain/clubs/club_repository.dart';
import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetClubsByLeagueUseCase {
  const GetClubsByLeagueUseCase(this.clubRepository);

  final ClubRepository clubRepository;

  Future<Result<List<Club>>> call({
    required List<int> leagueIds,
  }) async =>
      clubRepository.getClubsByLeagues(leagueIds);
}
