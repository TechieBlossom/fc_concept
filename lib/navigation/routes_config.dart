import 'package:fc_concept/home/bottom_nav_scaffold/bottom_nav_scaffold.dart';
import 'package:feature_compare/compare.dart';
import 'package:feature_dashboard/dashboard.dart';
import 'package:feature_menu/menu.dart';
import 'package:feature_player/player.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class AppRoutesConfig extends RoutesConfig {
  @override
  List<StatefulShellRoute> getRoutes() => [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) => BottomNavScaffold(
            navigationShell: navigationShell,
            destinations: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_rounded),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_search_rounded),
                label: 'Players',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_rounded),
                label: 'Menu',
              ),
            ],
          ),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: DashboardRoutes.pageDashboard,
                  builder: (context, state) => const DashboardPage(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: PlayerRoutes.pagePlayerList,
                  builder: (context, state) => const PlayerListPage(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: MenuRoutes.pageMenu,
                  builder: (context, state) => const MenuPage(),
                ),
              ],
            ),
          ],
        ),
      ];
}
