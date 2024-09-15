import 'package:core_domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class CompareNavigator extends AppNavigator {
  const CompareNavigator(super.goRouter);

  Future<void> goToComparePage(Player? player) async => goRouter.push(
        CompareRoutes.pageCompare,
        extra: player,
      );

  Future<Player?> goToPlayerSelectionPage() async =>
      goRouter.push(CompareRoutes.pagePlayerSelection);
}
