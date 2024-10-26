import 'package:feature_compare/src/player_selection/player_selection_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class CompareRoutesConfig extends RoutesConfig {
  @override
  List<GoRoute> getRoutes() => [
        // GoRoute(
        //   path: CompareRoutes.pageCompare,
        //   pageBuilder: (context, state) => MaterialPage(
        //     key: state.pageKey,
        //     name: state.fullPath,
        //     arguments: state.pathParameters,
        //     restorationId: state.pageKey.value,
        //     child: ComparePage(
        //       player: state.extra as Player?,
        //     ),
        //   ),
        // ),
        GoRoute(
          path: CompareRoutes.pagePlayerSelection,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.fullPath,
            arguments: state.pathParameters,
            restorationId: state.pageKey.value,
            child: const PlayerSelectionPage(),
          ),
        ),
      ];
}
