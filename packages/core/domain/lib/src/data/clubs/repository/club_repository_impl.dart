import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/clubs/table_club.dart';
import 'package:core_domain/src/domain/clubs/club_repository.dart';
import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ClubRepository)
class ClubRepositoryImpl extends ClubRepository {
  @override
  Future<Result<List<Club>>> getClubsByLeagues(List<int> leagueIds) async {
    final filters = leagueIds.map((id) => '${TableClub.leagueId}.eq.$id');
    try {
      final clubsResponse = await supabase
          .from(TableClub.tableClub)
          .select()
          .or(filters.join(','));

      final clubs = mapClubs(clubsResponse);
      return Success(data: clubs);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<Club> mapClubs(List<Map<String, dynamic>> clubsResponse) =>
      clubsResponse.map(Club.fromMap).toList();
}
