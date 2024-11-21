import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_dashboard/src/index/index_page.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class DashboardNavigator extends AppNavigator {
  const DashboardNavigator(super.goRouter);

  Future<void> goToPlayerDetail(Player player) async => goRouter.push(
        PlayerRoutes.pagePlayerDetail,
        extra: player,
      );

  Future<void> goToPlayersListByRating() async => goRouter.push(
        PlayerRoutes.pagePlayerListByRating,
      );

  Future<void> goToSearch() async => goRouter.go(
        PlayerRoutes.pagePlayerList,
      );

  Future<void> goToIndex(IndexType indexType) async => goRouter.push(
        DashboardRoutes.pageIndexDetail,
        extra: IndexPageParams(indexType: indexType),
      );
}
