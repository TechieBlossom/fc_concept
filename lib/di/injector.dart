import 'package:core_api_client/api_client.dart';
import 'package:core_domain/domain.dart';
import 'package:fc_concept/di/injection.dart';
import 'package:feature_auth/auth.dart';
import 'package:feature_compare/compare.dart';
import 'package:feature_drawer/drawer.dart';
import 'package:feature_filter/filter.dart';
import 'package:feature_player/player.dart';
import 'package:utility_di/di.dart';
import 'package:utility_navigation/navigation.dart';

Future<void> initializeDi(String environment) async {
  await initializeSupabase();
  return initializeDiContainers(
      environment: environment,
      const [
        appDi,
        authDi,
        apiClientDi,
        domainDi,
        navigationDi,
        drawerDi,
        playerDi,
        filterDi,
        compareDi,
      ],
    );
}
