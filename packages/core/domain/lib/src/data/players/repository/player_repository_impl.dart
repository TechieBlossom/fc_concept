import 'package:core_api_client/api_client.dart';
import 'package:core_domain/domain.dart';
import 'package:core_domain/src/data/players/table_player.dart';
import 'package:core_domain/src/data/rarities/table_rarity.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const _itemsPerPage = 10;
const _rarityTable = '${TableRarity.tableRarity}!inner(id, name)';
final _columnsToFetchForList = [
  TablePlayer.id,
  TablePlayer.name,
  TablePlayer.commonName,
  TablePlayer.firstName,
  TablePlayer.lastName,
  TablePlayer.rating,
  _rarityTable,
  TablePlayer.color,
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
          .select<List<Map<String, dynamic>>>(_columnsToFetchForList)
          .order(TablePlayer.rating)
          .order(TablePlayer.id, ascending: true)
          .range(start, end);

      final players = mapPlayers(playersResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.id} ${e.name} ${e.rating}'));
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
          .select<List<Map<String, dynamic>>>(_columnsToFetchForList)
          .like(TablePlayer.name, '%$query%')
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
    List<Gender>? genders,
    List<Position>? positions,
  }) async {
    final start = page * _itemsPerPage;
    final end = ((page + 1) * _itemsPerPage) - 1;

    final leagueIds = leagues?.map((league) => league.id);
    final clubIds = clubs?.map((club) => club.id);
    final nationIds = nations?.map((nation) => nation.id);
    final genderNames = genders?.map((gender) => gender.name);

    try {
      PostgrestFilterBuilder postgresFilterBuilder = supabase
          .from(TablePlayer.tablePlayer)
          .select<List<Map<String, dynamic>>>(_columnsToFetchForList);
      if (leagueIds != null && leagueIds.isNotEmpty) {
        postgresFilterBuilder =
            postgresFilterBuilder.in_(TablePlayer.league, leagueIds.toList());
      }
      if (clubIds != null && clubIds.isNotEmpty) {
        postgresFilterBuilder =
            postgresFilterBuilder.in_(TablePlayer.club, clubIds.toList());
      }
      if (nationIds != null && nationIds.isNotEmpty) {
        postgresFilterBuilder =
            postgresFilterBuilder.in_(TablePlayer.nation, nationIds.toList());
      }
      if (genderNames != null && genderNames.isNotEmpty) {
        postgresFilterBuilder =
            postgresFilterBuilder.in_(TablePlayer.gender, genderNames.toList());
      }

      final playersResponse = await postgresFilterBuilder
          .order(TablePlayer.rating)
          .order(TablePlayer.name, ascending: true)
          .range(start, end);

      final players = mapPlayers(playersResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.id} ${e.name} ${e.rating}'));
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
          .select<Map<String, dynamic>>('*, $_rarityTable')
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
          .select<Map<String, dynamic>>('*, $_rarityTable')
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
          .select<List<Map<String, dynamic>>>(_columnsToFetchForVersions)
          .eq(TablePlayer.name, name);

      final playerRarities = versionsResponse
          .map(
            (entry) =>
        (
        entry[TablePlayer.id] as int,
        (entry[TableRarity.tableRarity]
        as Map<String, dynamic>)[TableRarity.id] as int,
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
}
