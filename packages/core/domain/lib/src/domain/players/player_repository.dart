import 'package:core_domain/src/domain/clubs/model/club.dart';
import 'package:core_domain/src/domain/common/foot.dart';
import 'package:core_domain/src/domain/common/gender.dart';
import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:core_domain/src/domain/common/position.dart';
import 'package:core_domain/src/domain/models/result.dart';
import 'package:core_domain/src/domain/players/model/player.dart';
import 'package:core_domain/src/domain/rarity/model/rarity.dart';

abstract class PlayerRepository {
  Future<Result<List<Player>?>> topPlayers({
    int page = 0,
  });

  Future<Result<List<Player>?>> popularPlayers();

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
    List<int>? overallRatings,
    List<Gender>? genders,
    List<Foot>? foots,
    List<Position>? positions,
  });

  Future<int> getPlayerCount();
}
