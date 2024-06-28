// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_domain/domain.dart' as _i8;
import 'package:feature_filter/src/filter/bloc/filter_bloc.dart' as _i9;
import 'package:feature_filter/src/navigation/navigator.dart' as _i4;
import 'package:feature_filter/src/navigation/routes.dart' as _i3;
import 'package:feature_filter/src/nested_filter/bloc/nested_filter_bloc.dart'
    as _i6;
import 'package:feature_filter/src/nested_filter/nested_filter_page.dart'
    as _i7;
import 'package:feature_filter/src/nested_filter/rarity/bloc/rarity_nested_filter_bloc.dart'
    as _i10;
import 'package:feature_filter/src/nested_filter/rarity/rarity_nested_filter_page.dart'
    as _i11;
import 'package:feature_filter/src/nested_filter/rating/bloc/rating_nested_filter_bloc.dart'
    as _i12;
import 'package:feature_filter/src/nested_filter/rating/rating_nested_filter_page.dart'
    as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:utility_navigation/navigation.dart' as _i5;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.FilterRoutesConfig>(() => _i3.FilterRoutesConfig());
  gh.lazySingleton<_i4.FilterNavigator>(
      () => _i4.FilterNavigator(gh<_i5.GoRouter>()));
  gh.factoryParam<_i6.NestedFilterBloc, _i7.NestedFilterPageParams, dynamic>((
    nestedFilterPageParams,
    _,
  ) =>
      _i6.NestedFilterBloc(
        nestedFilterPageParams,
        gh<_i8.GetTopLeaguesUseCase>(),
        gh<_i8.GetOtherLeaguesUseCase>(),
        gh<_i8.GetClubsByLeagueUseCase>(),
        gh<_i8.GetTopNationsUseCase>(),
        gh<_i8.GetOtherNationsUseCase>(),
        gh<_i4.FilterNavigator>(),
      ));
  gh.factoryParam<_i9.FilterBloc, _i8.FilterConfiguration?, dynamic>((
    existingFilters,
    _,
  ) =>
      _i9.FilterBloc(
        existingFilters,
        gh<_i4.FilterNavigator>(),
      ));
  gh.factoryParam<_i10.RarityNestedFilterBloc,
      _i11.RarityNestedFilterPageParams, dynamic>((
    rarityNestedFilterPageParams,
    _,
  ) =>
      _i10.RarityNestedFilterBloc(
        rarityNestedFilterPageParams,
        gh<_i8.GetAllRarities>(),
        gh<_i4.FilterNavigator>(),
      ));
  gh.factoryParam<_i12.RatingNestedFilterBloc,
      _i13.RatingNestedFilterPageParams, dynamic>((
    ratingNestedFilterPageParams,
    _,
  ) =>
      _i12.RatingNestedFilterBloc(
        ratingNestedFilterPageParams,
        gh<_i4.FilterNavigator>(),
      ));
  return getIt;
}
