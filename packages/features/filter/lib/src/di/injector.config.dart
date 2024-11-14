// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_analytics/analytics.dart' as _i863;
import 'package:core_domain/domain.dart' as _i913;
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart' as _i841;
import 'package:feature_filter/src/navigation/navigator.dart' as _i176;
import 'package:feature_filter/src/navigation/routes.dart' as _i730;
import 'package:feature_filter/src/nested_filter/bloc/nested_filter_bloc.dart'
    as _i195;
import 'package:feature_filter/src/nested_filter/nested_filter_page.dart'
    as _i18;
import 'package:feature_filter/src/nested_filter/play_style/bloc/play_style_nested_filter_bloc.dart'
    as _i949;
import 'package:feature_filter/src/nested_filter/play_style/play_style_nested_filter_page.dart'
    as _i137;
import 'package:feature_filter/src/nested_filter/rarity/bloc/rarity_nested_filter_bloc.dart'
    as _i716;
import 'package:feature_filter/src/nested_filter/rarity/rarity_nested_filter_page.dart'
    as _i465;
import 'package:feature_filter/src/nested_filter/role/bloc/role_nested_filter_bloc.dart'
    as _i543;
import 'package:feature_filter/src/nested_filter/role/role_nested_filter_page.dart'
    as _i792;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:utility_navigation/navigation.dart' as _i177;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i730.FilterRoutesConfig>(() => _i730.FilterRoutesConfig());
  gh.lazySingleton<_i176.FilterNavigator>(
      () => _i176.FilterNavigator(gh<_i177.GoRouter>()));
  gh.factoryParam<_i841.FilterBloc, _i913.FilterConfiguration?, dynamic>((
    existingFilters,
    _,
  ) =>
      _i841.FilterBloc(
        existingFilters,
        gh<_i176.FilterNavigator>(),
        gh<_i913.GetPositionsFromPositionGroup>(),
        gh<_i913.GetPositionGroupFromPositions>(),
        gh<_i863.LogEventUseCase>(),
      ));
  gh.factoryParam<_i543.RoleNestedFilterBloc, _i792.RoleNestedFilterPageParams,
      List<_i913.Role>>((
    roleNestedFilterPageParams,
    allRoles,
  ) =>
      _i543.RoleNestedFilterBloc(
        roleNestedFilterPageParams,
        allRoles,
        gh<_i863.LogEventUseCase>(),
        gh<_i176.FilterNavigator>(),
      ));
  gh.factoryParam<_i195.NestedFilterBloc, _i18.NestedFilterPageParams, dynamic>(
      (
    nestedFilterPageParams,
    _,
  ) =>
          _i195.NestedFilterBloc(
            nestedFilterPageParams,
            gh<_i913.GetTopLeaguesUseCase>(),
            gh<_i913.GetOtherLeaguesUseCase>(),
            gh<_i913.GetClubsByLeagueUseCase>(),
            gh<_i913.GetTopNationsUseCase>(),
            gh<_i913.GetOtherNationsUseCase>(),
            gh<_i863.LogEventUseCase>(),
            gh<_i176.FilterNavigator>(),
          ));
  gh.factoryParam<_i716.RarityNestedFilterBloc,
      _i465.RarityNestedFilterPageParams, dynamic>((
    rarityNestedFilterPageParams,
    _,
  ) =>
      _i716.RarityNestedFilterBloc(
        rarityNestedFilterPageParams,
        gh<_i913.GetAllRarities>(),
        gh<_i863.LogEventUseCase>(),
        gh<_i176.FilterNavigator>(),
      ));
  gh.factoryParam<_i949.PlayStyleNestedFilterBloc,
      _i137.PlayStyleNestedFilterPageParams, List<_i913.PlayStyle>>((
    playStyleNestedFilterPageParams,
    allPlayStyles,
  ) =>
      _i949.PlayStyleNestedFilterBloc(
        playStyleNestedFilterPageParams,
        allPlayStyles,
        gh<_i863.LogEventUseCase>(),
        gh<_i176.FilterNavigator>(),
      ));
  return getIt;
}
