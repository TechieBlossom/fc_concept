import 'package:core_domain/domain.dart';
import 'package:feature_player/src/collection/player_collection_page.dart';
import 'package:feature_player/src/details/player_detail_page.dart';
import 'package:feature_player/src/rating/players_list_by_rating_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class PlayerRoutesConfig extends RoutesConfig {
  @override
  List<GoRoute> getRoutes() => [
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
        GoRoute(
          path: PlayerRoutes.pagePlayerListByRating,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.fullPath,
            arguments: state.pathParameters,
            restorationId: state.pageKey.value,
            child: const PlayersListByRatingPage(),
          ),
        ),
        GoRoute(
          path: PlayerRoutes.pagePlayerCollection,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.fullPath,
            arguments: state.pathParameters,
            restorationId: state.pageKey.value,
            child: PlayerCollectionPage(
              params: state.extra! as PlayerCollectionPageParams,
            ),
          ),
        ),
      ];
}
