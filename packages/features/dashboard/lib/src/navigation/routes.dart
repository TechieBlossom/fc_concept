import 'package:feature_dashboard/src/index/index_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class MenuRoutesConfig extends RoutesConfig {
  @override
  List<GoRoute> getRoutes() => [
    GoRoute(
      path: DashboardRoutes.pageIndexDetail,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        name: state.fullPath,
        arguments: state.pathParameters,
        restorationId: state.pageKey.value,
        child: IndexPage(params: state.extra! as IndexPageParams),
      ),
    ),
  ];
}
