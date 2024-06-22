import 'package:core_domain/domain.dart';
import 'package:feature_player/src/details/player_detail_page.dart';
import 'package:feature_player/src/list/presentation/player_list_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class PlayerRoutesConfig extends RoutesConfig {
  @override
  List<GoRoute> getRoutes() => [
        GoRoute(
          path: PlayerRoutes.pagePlayerList,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.fullPath,
            arguments: state.pathParameters,
            restorationId: state.pageKey.value,
            child: const PlayerListPage(),
          ),
        ),
        GoRoute(
          path: PlayerRoutes.pagePlayerDetail,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.fullPath,
            arguments: state.pathParameters,
            restorationId: state.pageKey.value,
            child: PlayerDetailPage(player: state.extra! as Player),
          ),
        ),
      ];
}
