// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_domain/domain.dart' as _i913;
import 'package:feature_compare/compare.dart' as _i534;
import 'package:feature_compare/src/compare/bloc/compare_bloc.dart' as _i921;
import 'package:feature_compare/src/navigation/navigator.dart' as _i603;
import 'package:feature_compare/src/navigation/routes.dart' as _i231;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:utility_navigation/navigation.dart' as _i177;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.lazySingleton<_i231.CompareRoutesConfig>(
    () => _i231.CompareRoutesConfig(),
  );
  gh.lazySingleton<_i603.CompareNavigator>(
    () => _i603.CompareNavigator(gh<_i177.GoRouter>()),
  );
  gh.factoryParam<_i921.CompareBloc, _i913.Player?, dynamic>(
    (player, _) => _i921.CompareBloc(
      player,
      gh<_i534.CompareNavigator>(),
      gh<_i913.GetPlayerDetailsUseCase>(),
    ),
  );
  return getIt;
}
