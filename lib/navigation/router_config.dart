import 'package:fut_maidaan/navigation/routes_config.dart';
import 'package:feature_compare/compare.dart';
import 'package:feature_dashboard/dashboard.dart';
import 'package:feature_filter/filter.dart';
import 'package:feature_menu/menu.dart';
import 'package:feature_player/player.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';
import 'package:utility_navigation/navigation.dart';

final appRouterConfig = GoRouter(
  initialLocation: DashboardRoutes.pageDashboard,
  navigatorKey: di<GlobalKey<NavigatorState>>(),
  routes: [
    ...di<DashboardRoutesConfig>().getRoutes(),
    ...di<PlayerRoutesConfig>().getRoutes(),
    ...di<CompareRoutesConfig>().getRoutes(),
    ...di<FilterRoutesConfig>().getRoutes(),
    ...di<MenuRoutesConfig>().getRoutes(),
    ...di<AppRoutesConfig>().getRoutes(),
  ],
);
