import 'package:core_domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class DashboardNavigator extends AppNavigator {
  const DashboardNavigator(super.goRouter);

  Future<void> goToPlayerDetail(Player player) async => goRouter.push(
    PlayerRoutes.pagePlayerDetail,
    extra: player,
  );

  Future<void> goToSearch() async => goRouter.go(
    PlayerRoutes.pagePlayerList,
  );

}
