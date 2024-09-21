import 'package:core_api_client/api_client.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@injectable
class AuthGuardObserver extends NavigatorObserver {
  AuthGuardObserver(
    this._rootNavigatorKey,
  );

  final GlobalKey<NavigatorState> _rootNavigatorKey;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _onNavigationStackChanged(route.settings.name);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    //_onNavigationStackChanged(route.settings.name);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    //_onNavigationStackChanged(route.settings.name);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _onNavigationStackChanged(newRoute?.settings.name);
  }

  Future<void> _onNavigationStackChanged(String? page) async {
    if (page != null && loggedInRoutes.contains(page)) {
      if (supabase.auth.currentSession == null) {
        final context = _rootNavigatorKey.currentContext;
        if (context != null) {
          // TODO: Inform user that this specific screen cannot be opened for non-logged in user
          /// The dialog can have sign in button, which will take them to sign in screen
          /// Once signed in, user lands on last screen if possible or home screen
          context.read<AuthStateBloc>().add(SignedOut());
        }
      }
    }
  }
}

const loggedInRoutes = [
  CompareRoutes.pageCompare,
];
