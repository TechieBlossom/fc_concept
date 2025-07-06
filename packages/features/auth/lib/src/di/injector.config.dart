// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_domain/auth.dart' as _i643;
import 'package:feature_auth/src/auth_state/bloc/auth_state_bloc.dart'
    as _i1073;
import 'package:feature_auth/src/login/bloc/login_bloc.dart' as _i481;
import 'package:feature_auth/src/navigation/navigator.dart' as _i944;
import 'package:feature_auth/src/navigation/routes.dart' as _i91;
import 'package:feature_auth/src/register/bloc/register_bloc.dart' as _i248;
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
  gh.lazySingleton<_i91.AuthRoutesConfig>(() => _i91.AuthRoutesConfig());
  gh.lazySingleton<_i944.AuthNavigator>(
    () => _i944.AuthNavigator(gh<_i177.GoRouter>()),
  );
  gh.factory<_i481.LoginBloc>(
    () => _i481.LoginBloc(
      gh<_i944.AuthNavigator>(),
      gh<_i643.LoginUserUseCase>(),
    ),
  );
  gh.factory<_i248.RegisterBloc>(
    () => _i248.RegisterBloc(
      gh<_i944.AuthNavigator>(),
      gh<_i643.RegisterUserUseCase>(),
    ),
  );
  gh.factory<_i1073.AuthStateBloc>(
    () => _i1073.AuthStateBloc(
      gh<_i643.ObserveAuthStateUseCase>(),
      gh<_i944.AuthNavigator>(),
    ),
  );
  return getIt;
}
