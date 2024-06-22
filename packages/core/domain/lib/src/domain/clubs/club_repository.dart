import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/models/result.dart';

abstract class ClubRepository {
  Future<Result<List<Club>>> getClubsByLeagues(List<int> leagueIds);
}
