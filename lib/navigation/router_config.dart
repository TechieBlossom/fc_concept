import 'package:feature_compare/compare.dart';
import 'package:feature_filter/filter.dart';
import 'package:feature_player/player.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';
import 'package:utility_navigation/navigation.dart';

final appRouterConfig = GoRouter(
  initialLocation: PlayerRoutes.pagePlayerList,
  navigatorKey: di<GlobalKey<NavigatorState>>(),
  routes: [
    ...di<PlayerRoutesConfig>().getRoutes(),
    ...di<CompareRoutesConfig>().getRoutes(),
    ...di<FilterRoutesConfig>().getRoutes(),
  ],
);
