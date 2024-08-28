// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_domain/domain.dart' as _i913;
import 'package:feature_compare/compare.dart' as _i534;
import 'package:feature_drawer/src/app_drawer/bloc/app_drawer_bloc.dart'
    as _i1007;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
  gh.factory<_i1007.AppDrawerBloc>(() => _i1007.AppDrawerBloc(
        gh<_i534.CompareNavigator>(),
        gh<_i913.GetPlayerCountUseCase>(),
      ));
  return getIt;
}
