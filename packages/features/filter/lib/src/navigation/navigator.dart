import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_page.dart';
import 'package:feature_filter/src/nested_filter/rarity/rarity_nested_filter_page.dart';
import 'package:feature_filter/src/nested_filter/role/role_nested_filter_page.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class FilterNavigator extends AppNavigator {
  const FilterNavigator(super.goRouter);

  Future<List<T>?> goToNestedFilter<T>({
    required NestedFilterPageParams params,
  }) =>
      goRouter.push(
        FilterRoutes.pageNestedFilter,
        extra: params,
      );

  Future<List<Rarity>?> goToRarityNestedFilter<Rarity>({
    required RarityNestedFilterPageParams params,
  }) =>
      goRouter.push(
        FilterRoutes.pageRarityNestedFilter,
        extra: params,
      );

  Future<List<Role>?> goToRoleNestedFilter<Rarity>({
    required RoleNestedFilterPageParams params,
  }) =>
      goRouter.push(
        FilterRoutes.pageRoleNestedFilter,
        extra: params,
      );

  void closeAny<T>(T data) => goRouter.pop(data);
}
