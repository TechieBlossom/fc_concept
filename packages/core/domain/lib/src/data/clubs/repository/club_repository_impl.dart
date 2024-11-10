import 'package:cached_annotation/cached_annotation.dart';
import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/clubs/table_club.dart';
import 'package:core_domain/src/domain/clubs/club_repository.dart';
import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';

part 'club_repository_impl.cached.dart';

const _cacheTTL = 30 * 24 * 60 * 60; // 30 days

@Injectable(as: ClubRepository)
@WithCache()
abstract mixin class ClubRepositoryImpl
    implements ClubRepository, _$ClubRepositoryImpl {
  @factoryMethod
  factory ClubRepositoryImpl() = _ClubRepositoryImpl;

  @override
  Future<Result<List<Club>>> getClubsByLeagues(List<int> leagueIds) async {
    final filters =
        leagueIds.map((id) => '${TableClub.leagueEaId}.eq.$id').join(',');
    try {
      final rawResponse = await _getClubs(filters);
      final clubs = mapClubs(rawResponse);
      return Success(data: clubs);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getClubs(String filters) async {
    try {
      final clubsResponse =
          await supabase.from(TableClub.tableClub).select().or(filters);

      return clubsResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  List<Club> mapClubs(List<dynamic> clubsResponse) => clubsResponse
      .map((value) => Club.fromMap(value as Map<String, dynamic>))
      .toList();
}
