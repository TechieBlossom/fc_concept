import 'package:core_domain/domain.dart';
import 'package:feature_player/src/collection/player_collection_page.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class PlayerNavigator extends AppNavigator {
  const PlayerNavigator(super.goRouter);

  Future<void> goToPlayers() async => goRouter.push(
        PlayerRoutes.pagePlayerList,
      );

  Future<void> goToPlayerCollection(
    PlayerCollectionPageParams params,
  ) async =>
      goRouter.push(
        PlayerRoutes.pagePlayerCollection,
        extra: params,
      );

  Future<void> goToPopularPlayers() async => goRouter.push(
        PlayerRoutes.pagePopularPlayerList,
      );

  Future<void> goToPlayerDetail(Player player) async => goRouter.push(
        PlayerRoutes.pagePlayerDetail,
        extra: player,
      );

  Future<void> goToCompare(Player player) async => goRouter.push(
        CompareRoutes.pageCompare,
        extra: player,
      );

  Future<FilterConfiguration?> goToFilter(
    FilterConfiguration? existingFilters,
  ) async =>
      goRouter.push(
        FilterRoutes.pageFilter,
        extra: existingFilters,
      );

  Future<void> goBack(Player player) async => goRouter.pop(player);
}
