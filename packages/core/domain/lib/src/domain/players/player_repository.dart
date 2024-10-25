import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/common/foot.dart';
import 'package:core_domain/src/domain/common/gender.dart';
import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/play_styles/model/play_style.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/positions/model/position.dart';
import 'package:core_domain/src/domain/rarity/model/rarity.dart';
import 'package:core_domain/src/domain/roles/model/role.dart';
import 'package:flutter/material.dart';

abstract class PlayerRepository {
  Future<Result<List<Player>?>> topPlayers({
    int page = 0,
  });

  Future<Result<List<Player>?>> recentPlayers();

  Future<Result<List<Player>?>> sbcPlayers();

  Future<Result<List<Player>?>> topForwards();

  Future<Result<List<Player>?>> topDefence();

  Future<Result<List<Player>?>> topMidfielders();

  Future<Result<List<Player>?>> topGoalKeepers();

  Future<Result<List<Player>?>> searchPlayers({
    required String query,
    int page = 0,
  });

  Future<Result<Player>> getPlayer({
    required int playerId,
  });

  Future<Result<Player>> getPlayerByVersion({
    required int playerId,
    required int versionId,
  });

  Future<Result<List<(int, int, String)>?>> getPlayerVersions({
    required String name,
  });

  Future<Result<List<Player>?>> filterPlayers({
    int page = 0,
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
  });

  Future<int> getPlayerCount();
}
