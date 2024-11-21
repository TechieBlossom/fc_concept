import 'package:feature_menu/src/about/about_us_page.dart';
import 'package:feature_menu/src/privacy_policy/privacy_policy_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class DashboardRoutesConfig extends RoutesConfig {
  @override
  List<GoRoute> getRoutes() => [
    GoRoute(
      path: MenuRoutes.pageAboutUs,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        name: state.fullPath,
        arguments: state.pathParameters,
        restorationId: state.pageKey.value,
        child: const AboutUsPage(),
      ),
    ),
    GoRoute(
      path: MenuRoutes.pagePrivacyPolicy,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        name: state.fullPath,
        arguments: state.pathParameters,
        restorationId: state.pageKey.value,
        child: const PrivacyPolicyPage(),
      ),
    ),
  ];
}
