import 'package:core_api_client/api_client.dart';
import 'package:core_domain/domain.dart';
import 'package:core_domain/src/data/clubs/table_club.dart';
import 'package:core_domain/src/data/leagues/table_league.dart';
import 'package:core_domain/src/data/nations/table_nation.dart';
import 'package:core_domain/src/data/players/table_player.dart';
import 'package:core_domain/src/data/positions/table_position.dart';
import 'package:core_domain/src/data/rarities/table_rarity.dart';
import 'package:core_domain/src/domain/players/player_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'player_repository_impl.cached.dart';

const _cacheTTL = 1 * 60 * 60; // 6 hours
const _playerCacheTTL = 30 * 24 * 60 * 60; // 30 days
const _forwardPositionSet = {23, 25, 27};
const _midfieldPositionSet = {10, 12, 14, 16, 18};
const _defenderPositionSet = {3, 5, 7};
const _goalkeeperPositionSet = {0};

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
  TablePlayer.eaId,
  TablePlayer.basePlayerEaId,
  TablePlayer.commonName,
  TablePlayer.firstName,
  TablePlayer.lastName,
  TablePlayer.overall,
  TablePlayer.position,
  TablePlayer.imagePath,
  TablePlayer.createdAt,
  TablePlayer.isSbcItem,
  TablePlayer.isObjectiveItem,
  TablePlayer.createdAt,
  _rarityTable,
  _clubTable,
  _leagueTable,
  _nationTable,
  _positionTable,
].join(',');

@Injectable(as: PlayerRepository)
@WithCache()
abstract mixin class PlayerRepositoryImpl
    implements PlayerRepository, _$PlayerRepositoryImpl {
  @factoryMethod
  factory PlayerRepositoryImpl() = _PlayerRepositoryImpl;

  @override
  Future<Result<List<Player>?>> topPlayers({
    int page = 0,
  }) async {
    try {
      final rawResponse = await _topPlayers(page: page);
      final players = mapPlayers(rawResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.eaId} ${e.commonName} ${e.overall}'));
      }
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _topPlayers({
    int page = 0,
  }) async {
    final start = page * _itemsPerPage;
    final end = ((page + 1) * _itemsPerPage) - 1;

    try {
      final playersResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForList)
          .order(TablePlayer.overall, ascending: false)
          .order(TablePlayer.commonName, ascending: true)
          .order(TablePlayer.createdAt, ascending: false)
          .range(start, end);

      return playersResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Result<List<Player>?>> recentPlayers() async {
    try {
      final playersResponse = await _recentPlayers();
      final players = mapPlayers(playersResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.eaId} ${e.commonName} ${e.overall}'));
      }
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _recentPlayers() async {
    try {
      final playersResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForList)
          .order(TablePlayer.createdAt, ascending: false)
          .limit(30);

      return playersResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Result<List<Player>?>> sbcPlayers() async {
    try {
      final playersResponse = await _sbcPlayers();

      final players = mapPlayers(playersResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.eaId} ${e.commonName} ${e.overall}'));
      }
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _sbcPlayers() async {
    try {
      final playersResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForList)
          .eq(TablePlayer.isSbcItem, true)
          .order(TablePlayer.createdAt, ascending: false);

      return playersResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Result<List<Player>?>> getPositionalPlayers(
    PositionGroup positionGroup,
  ) async {
    try {
      final rawResponse = await _getPositionalPlayers(positionGroup);
      final players = mapPlayers(rawResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.eaId} ${e.commonName} ${e.overall}'));
      }
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getPositionalPlayers(
    PositionGroup positionGroup,
  ) async {
    final positions = switch (positionGroup) {
      Forwards() => _forwardPositionSet,
      Midfielders() => _midfieldPositionSet,
      Defenders() => _defenderPositionSet,
      Goalkeepers() => _goalkeeperPositionSet,
    };
    final overall = switch (positionGroup) {
      Forwards() || Midfielders() || Defenders() => 80,
      Goalkeepers() => 87,
    };
    try {
      final playersResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForList)
          .gte(TablePlayer.overall, overall)
          .inFilter(TablePlayer.position, positions.toList())
          .order(TablePlayer.overall, ascending: false)
          .limit(30);

      return playersResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Result<List<Player>?>> getPlayersByRaritySquad({
    required int raritySquadId,
  }) async {
    try {
      final playersResponse = await _getPlayersByRaritySquad(
        raritySquadId: raritySquadId,
      );

      final players = mapPlayers(playersResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.eaId} ${e.commonName} ${e.overall}'));
      }
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _cacheTTL)
  Future<List<dynamic>> _getPlayersByRaritySquad({
    required int raritySquadId,
  }) async {
    try {
      final playersResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForList)
          .eq(TablePlayer.raritySquadId, raritySquadId)
          .order(TablePlayer.overall, ascending: false)
          .limit(30);

      return playersResponse;
    } catch (e, _) {
      rethrow;
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
          .order(TablePlayer.overall, ascending: false)
          .order(TablePlayer.commonName, ascending: true)
          .order(TablePlayer.createdAt, ascending: false)
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
    String? searchQuery,
    List<NestedFilterLayoutType>? leagues,
    List<NestedFilterLayoutType>? nations,
    List<Club>? clubs,
    List<Rarity>? rarities,
    RangeValues? overallRatingRange,
    List<Gender>? genders,
    List<Foot>? foots,
    List<Position>? positions,
    List<Role>? roles,
    List<PlayStyle>? playStyles,
  }) async {
    final start = page * _itemsPerPage;
    final end = ((page + 1) * _itemsPerPage) - 1;

    final leagueIds = leagues?.map((league) => league.eaId);
    final clubIds = clubs?.map((club) => club.eaId);
    final nationIds = nations?.map((nation) => nation.eaId);
    final genderIds = genders?.map((gender) => gender.value);
    final rarityIds = rarities?.map((rarity) => rarity.eaId);
    final footIds = foots?.map((foot) => foot.value);
    final positionIds = positions?.map((position) => position.eaId);
    final rolePlusIds =
        roles?.where((role) => role.isPlus).map((role) => role.eaId);
    final rolePlusPlusIds =
        roles?.where((role) => role.isPlusPlus).map((role) => role.eaId);
    final playStyleIds = playStyles?.map((playStyle) => playStyle.eaId);

    try {
      PostgrestFilterBuilder postgresFilterBuilder =
          supabase.from(TablePlayer.tablePlayer).select(_columnsToFetchForList);

      if (searchQuery?.isNotEmpty ?? false) {
        postgresFilterBuilder = postgresFilterBuilder.like(
          TablePlayer.commonName,
          '%$searchQuery%',
        );
      }

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
      if (genderIds != null && genderIds.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.gender,
          genderIds.toList(),
        );
      }
      if (footIds != null && footIds.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.foot,
          footIds.toList(),
        );
      }
      if (rarityIds != null && rarityIds.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.rarity,
          rarityIds.toList(),
        );
      }

      if (rolePlusIds != null && rolePlusIds.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.contains(
          TablePlayer.rolesPlus,
          rolePlusIds.toList(),
        );
      }

      if (rolePlusPlusIds != null && rolePlusPlusIds.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.contains(
          TablePlayer.rolesPlusPlus,
          rolePlusPlusIds.toList(),
        );
      }

      if (playStyleIds != null && playStyleIds.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder
            .or('${TablePlayer.playStylesPlus}.ov.{${playStyleIds.join(',')}},'
                '${TablePlayer.playStyles}.ov.{${playStyleIds.join(',')}}');
      }

      if (overallRatingRange != null) {
        if (overallRatingRange.start.round() == 1 &&
            overallRatingRange.end.round() == 99) {
        } else if (overallRatingRange.start == overallRatingRange.end) {
          postgresFilterBuilder = postgresFilterBuilder.eq(
            TablePlayer.overall,
            overallRatingRange.start.round(),
          );
        } else {
          postgresFilterBuilder = postgresFilterBuilder
              .gte(
                TablePlayer.overall,
                overallRatingRange.start.round(),
              )
              .lte(
                TablePlayer.overall,
                overallRatingRange.end.round(),
              );
        }
      }

      if (positionIds != null && positionIds.isNotEmpty) {
        postgresFilterBuilder = postgresFilterBuilder.inFilter(
          TablePlayer.position,
          positionIds.toList(),
        );
      }

      final playersResponse = await postgresFilterBuilder
          .order(TablePlayer.overall, ascending: false)
          .order(TablePlayer.commonName, ascending: true)
          .order(TablePlayer.createdAt, ascending: false)
          .range(start, end);

      final players = mapPlayers(playersResponse);
      if (kDebugMode) {
        print(players.map((e) => '${e.eaId} ${e.commonName} ${e.overall}'));
      }
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  List<Player> mapPlayers(List<dynamic> playersResponse) {
    return playersResponse
        .map((playerJson) => Player.fromMap(playerJson as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Result<Player>> getPlayer({required int playerId}) async {
    try {
      final playerResponse = await _getPlayer(playerId: playerId);

      final player = Player.fromMap(playerResponse as Map<String, dynamic>);
      return Success(data: player);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }

  @PersistentCached(ttl: _playerCacheTTL)
  Future<dynamic> _getPlayer({required int playerId}) async {
    try {
      final playerResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select('*, $_rarityTable, $_clubTable, $_leagueTable, '
              '$_nationTable, $_positionTable')
          .eq(TablePlayer.eaId, playerId)
          .limit(1)
          .single();

      return playerResponse;
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Result<List<Player>?>> getPlayerVersions({
    required int basePlayerEaId,
    required int eaId,
  }) async {
    try {
      final playersResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForList)
          .eq(TablePlayer.basePlayerEaId, basePlayerEaId)
          .neq(TablePlayer.eaId, eaId)
          .order(TablePlayer.overall, ascending: false);

      final players = mapPlayers(playersResponse);
      return Success(data: players);
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

  @override
  Future<Result<List<Player>?>> getPlayersByEaIds({
    required List<int> eaIds,
  }) async {
    try {
      final playersResponse = await supabase
          .from(TablePlayer.tablePlayer)
          .select(_columnsToFetchForList)
          .inFilter(TablePlayer.eaId, eaIds);

      final players = mapPlayers(playersResponse);
      return Success(data: players);
    } catch (e, _) {
      return Failure(exception: e as Exception);
    }
  }
}
