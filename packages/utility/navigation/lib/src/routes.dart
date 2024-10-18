import 'package:go_router/go_router.dart';

abstract class RoutesConfig {
  List<RouteBase> getRoutes();
}

abstract class AppNavigator {
  const AppNavigator(this.goRouter);

  final GoRouter goRouter;
}

abstract class DashboardRoutes {
  static const pageDashboard = '/dashboard';
}

abstract class PlayerRoutes {
  static const pagePlayerList = '/player-list';
  static const pagePopularPlayerList = '/popular-player-list';
  static const pagePlayerDetail = '/player-detail';
}

abstract class CompareRoutes {
  static const pageCompare = '/compare';
  static const pagePlayerSelection = '/compare-player-selection';
}

abstract class AuthRoutes {
  static const pageAuthLogin = '/auth-login';
  static const pageAuthRegister = '/auth-register';
}

abstract class FilterRoutes {
  static const pageFilter = '/filter';
  static const pageNestedFilter = '/nested-filter';
  static const pageRarityNestedFilter = '/rarity-nested-filter';
  static const pageRoleNestedFilter = '/role-nested-filter';
}
