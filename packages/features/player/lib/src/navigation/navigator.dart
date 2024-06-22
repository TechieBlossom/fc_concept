import 'package:core_domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class PlayerNavigator extends Navigator {
  const PlayerNavigator(super.goRouter);

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
