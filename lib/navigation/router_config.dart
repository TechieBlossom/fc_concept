import 'package:fc_concept/navigation/auth_guard_observer.dart';
import 'package:fc_concept/navigation/routes_config.dart';
import 'package:feature_auth/auth.dart';
import 'package:feature_compare/compare.dart';
import 'package:feature_filter/filter.dart';
import 'package:feature_player/player.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';
import 'package:utility_navigation/navigation.dart';

final appRouterConfig = GoRouter(
  observers: [
    di<AuthGuardObserver>(),
  ],
  initialLocation: DashboardRoutes.pageDashboard,
  navigatorKey: di<GlobalKey<NavigatorState>>(),
  routes: [
    ...di<PlayerRoutesConfig>().getRoutes(),
    ...di<CompareRoutesConfig>().getRoutes(),
    ...di<FilterRoutesConfig>().getRoutes(),
    ...di<AuthRoutesConfig>().getRoutes(),
    ...di<AppRoutesConfig>().getRoutes(),
  ],
);
