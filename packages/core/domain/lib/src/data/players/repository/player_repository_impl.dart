import 'package:core_api_client/api_client.dart';
import 'package:core_domain/src/data/clubs/table_club.dart';
import 'package:core_domain/src/data/leagues/table_league.dart';
import 'package:core_domain/src/data/nations/table_nation.dart';
import 'package:core_domain/src/data/players/table_player.dart';
import 'package:core_domain/src/data/positions/table_position.dart';
import 'package:core_domain/src/data/rarities/table_rarity.dart';
import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/common/foot.dart';
import 'package:core_domain/src/domain/common/gender.dart';
import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/rarity/model/rarity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const _itemsPerPage = 10;
const _rarityTable =
    '${TableRarity.tableRarity}!inner(${TableRarity.eaId}, ${TableRarity.name}, '
    '${TableRarity.dominantColor}, ${TableRarity.textColor}, '
    '${TableRarity.isSpecial}, ${TableRarity.imagePath}, '
    '${TableRarity.compactImagePath})';
const _clubTable = '${TableClub.tableClub}!inner(${TableClub.eaId}, '
    '${TableClub.name}, ${TableClub.leagueEaId}, ${TableClub.isWomen},'
    '${TableClub.isIconClub}, ${TableClub.pastAndPresentHighlightedPlayerItemEaIds},'
    '${TableClub.imagePath}, ${TableClub.lightImagePath})';
const _leagueTable = '${TableLeague.tableLeague}!inner(${TableLeague.eaId}, '
    '${TableLeague.name}, ${TableLeague.imagePath}, ${TableLeague.imageLightPath})';
const _nationTable = '${TableNation.tableNation}!inner(${TableNation.eaId}, '
    '${TableNation.name}, ${TableNation.imagePath})';
const _positionTable =
    '${TablePosition.tablePosition}!inner(${TablePosition.eaId}, '
    '${TablePosition.label}, ${TablePosition.shortLabel}, '
    '${TablePosition.positionTypeId}, ${TablePosition.positionTypeName})';

final _columnsToFetchForList = [
  TablePlayer.id,
  TablePlayer.commonName,
  TablePlayer.firstName,
  TablePlayer.lastName,
  TablePlayer.overall,
  TablePlayer.position,
  TablePlayer.imagePath,
  TablePlayer.createdAt,
  _rarityTable,
  _clubTable,
  _leagueTable,
  _nationTable,
  _positionTable,
].join(',');

final _columnsToFetchForVersions = [
  TablePlayer.id,
  _rarityTable,
].join(',');

@Injectable(as: PlayerRepository)
class PlayerRepositoryImpl extends PlayerRepository {
  @override
  Future<Result<List<Player>?>> topPlayers({
    int page = 0,
  }) async {
    final start = page * _itemsPerPage;
    final end = ((page + 1) * _itemsPerPage) - 1;

    try {
      final playersResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForList)
          .order(TablePlayer.createdAt)
          .order(TablePlayer.overall, ascending: false)
          .order(TablePlayer.commonName, ascending: true)
          .range(start, end);

      final players = mapPlayers(playersResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.id} ${e.commonName} ${e.overall}'));
      }
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @override
  Future<Result<List<Player>?>> popularPlayers() async {
    try {
      final playersResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForList)
          .range(0, 50);

      final players = mapPlayers(playersResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.id} ${e.commonName} ${e.overall}'));
      }
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @override
  Future<Result<List<Player>?>> searchPlayers({
    int page = 0,
    required String query,
  }) async {
    final start = page * _itemsPerPage;
    final end = (page + 1) * _itemsPerPage - 1;

    try {
      final playersResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForList)
          .like(TablePlayer.commonName, '%$query%')
          .range(start, end);

      final players = mapPlayers(playersResponse);
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @override
  Future<Result<List<Player>?>> filterPlayers({
    int page = 0,
    List<NestedFilterLayoutType>? leagues,
    List<NestedFilterLayoutType>? nations,
    List<Club>? clubs,
    List<Rarity>? rarities,
    List<int>? overallRatings,
    List<Gender>? genders,
    List<Foot>? foots,
    List<Position>? positions,
  }) async {
    final start = page * _itemsPerPage;
    final end = ((page + 1) * _itemsPerPage) - 1;

    final leagueIds = leagues?.map((league) => league.eaId);
    final clubIds = clubs?.map((club) => club.eaId);
    final nationIds = nations?.map((nation) => nation.eaId);
    final genderNames = genders?.map((gender) => gender.name);
    final rarityIds = rarities?.map((rarity) => rarity.eaId);
    final footNames = foots?.map((foot) => foot.name);
    final positionNames = positions?.map((position) => position.eaId);

    try {
      PostgrestFilterBuilder postgresFilterBuilder =
          supabase.from(TablePlayer.tablePlayer).select(_columnsToFetchForList);
      if (leagueIds != null && leagueIds.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.league,
          leagueIds.toList(),
        );
      }
      if (clubIds != null && clubIds.isNotEmpty) {
        postgresFilterBuilder =
            postgresFilterBuilder.inFilter(TablePlayer.club, clubIds.toList());
      }
      if (nationIds != null && nationIds.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.nation,
          nationIds.toList(),
        );
      }
      if (genderNames != null && genderNames.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.gender,
          genderNames.toList(),
        );
      }
      if (footNames != null && footNames.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.foot,
          footNames.toList(),
        );
      }
      if (rarityIds != null && rarityIds.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.rarity,
          rarityIds.toList(),
        );
      }

      if (overallRatings != null && overallRatings.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.overall,
          overallRatings,
        );
      }

      if (positionNames != null && positionNames.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.position,
          positionNames.toList(),
        );
      }

      final playersResponse = await postgresFilterBuilder
          .order(TablePlayer.overall)
          .order(TablePlayer.commonName, ascending: true)
          .range(start, end);

      final players = mapPlayers(playersResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.id} ${e.commonName} ${e.overall}'));
      }
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<Player> mapPlayers(List<Map<String, dynamic>> playersResponse) {
    return playersResponse
        .map((playerJson) => Player.fromJson(playerJson))
        .toList();
  }

  @override
  Future<Result<Player>> getPlayer({required int playerId}) async {
    try {
      final playerResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select('*, $_rarityTable, $_clubTable, $_leagueTable, $_nationTable, $_positionTable')
          .eq(TablePlayer.id, playerId)
          .limit(1)
          .single();

      final player = Player.fromJson(playerResponse);
      return Success(data: player);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @override
  Future<Result<Player>> getPlayerByVersion({
    required int playerId,
    required int versionId,
  }) async {
    try {
      final playerResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select('*, $_rarityTable')
          .match({
            TablePlayer.id: playerId,
            TablePlayer.rarity: versionId,
          })
          .limit(1)
          .single();

      final player = Player.fromJson(playerResponse);
      return Success(data: player);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @override
  Future<Result<List<(int, int, String)>?>> getPlayerVersions({
    required String name,
  }) async {
    try {
      final versionsResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForVersions)
          .eq(TablePlayer.commonName, name);

      final playerRarities = versionsResponse
          .map(
            (entry) => (
              entry[TablePlayer.id] as int,
              (entry[TableRarity.tableRarity]
                  as Map<String, dynamic>)[TableRarity.eaId] as int,
              (entry[TableRarity.tableRarity]
                  as Map<String, dynamic>)[TableRarity.name] as String,
            ),
          )
          .toList();

      return Success(data: playerRarities);
    } catch (e, _) {
      return Failure(exception: Exception());
    }
  }

  @override
  Future<int> getPlayerCount() async {
    final response = await supabase
        .from(TablePlayer.tablePlayer)
        .select(TablePlayer.id)
        .count(CountOption.exact);

    return response.count;
  }
}
