import 'package:go_router/go_router.dart';

abstract class RoutesConfig {
  List<GoRoute> getRoutes();
}

abstract class Navigator {
  const Navigator(this.goRouter);

  final GoRouter goRouter;
}

abstract class PlayerRoutes {
  static const pagePlayerList = '/player-list';
  static const pagePlayerDetail = '/player-detail';
}

abstract class CompareRoutes {
  static const pageCompare = '/compare';
  static const pagePlayerSelection = '/compare-player-selection';
}

abstract class FilterRoutes {
  static const pageFilter = '/filter';
  static const pageNestedFilter = '/nested-filter';
  static const pageRarityNestedFilter = '/rarity-nested-filter';
  static const pageOverallRatingNestedFilter = '/overall-rating-nested-filter';
}
