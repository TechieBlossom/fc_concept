import 'package:core_analytics/analytics.dart';
import 'package:core_api_client/api_client.dart';
import 'package:core_domain/domain.dart';
import 'package:fut_maidaan/di/injection.dart';
import 'package:feature_compare/compare.dart';
import 'package:feature_dashboard/dashboard.dart';
import 'package:feature_filter/filter.dart';
import 'package:feature_menu/menu.dart';
import 'package:feature_player/player.dart';
import 'package:utility_di/di.dart';
import 'package:utility_navigation/navigation.dart';

Future<void> initializeDi(String environment) async {
  await initializeSupabase();
  return initializeDiContainers(
      environment: environment,
      const [
        appDi,
        apiClientDi,
        domainDi,
        navigationDi,
        analyticsDi,
        menuDi,
        dashboardDi,
        playerDi,
        filterDi,
        compareDi,
      ],
    );
}
