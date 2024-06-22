import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/filter/filter_page.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_page.dart';
import 'package:feature_filter/src/nested_filter/rarity/rarity_nested_filter_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class FilterRoutesConfig extends RoutesConfig {
  @override
  List<GoRoute> getRoutes() => [
        GoRoute(
          path: FilterRoutes.pageFilter,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.fullPath,
            arguments: state.pathParameters,
            restorationId: state.pageKey.value,
            child: FilterPage(
              existingFilters: state.extra as FilterConfiguration?,
            ),
          ),
        ),
        GoRoute(
          path: FilterRoutes.pageNestedFilter,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.fullPath,
            arguments: state.pathParameters,
            restorationId: state.pageKey.value,
            child: NestedFilterPage(
              nestedFilterPageParams: state.extra! as NestedFilterPageParams,
            ),
          ),
        ),
        GoRoute(
          path: FilterRoutes.pageRarityNestedFilter,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.fullPath,
            arguments: state.pathParameters,
            restorationId: state.pageKey.value,
            child: RarityNestedFilterPage(
              rarityNestedFilterPageParams:
                  state.extra! as RarityNestedFilterPageParams,
            ),
          ),
        ),
      ];
}
