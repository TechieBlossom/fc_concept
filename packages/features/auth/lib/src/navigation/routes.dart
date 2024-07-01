import 'package:feature_auth/src/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class AuthRoutesConfig extends RoutesConfig {
  @override
  List<GoRoute> getRoutes() => [
        GoRoute(
          path: AuthRoutes.pageAuthLogin,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.fullPath,
            arguments: state.pathParameters,
            restorationId: state.pageKey.value,
            child: const LoginPage(),
          ),
        ),
      ];
}
