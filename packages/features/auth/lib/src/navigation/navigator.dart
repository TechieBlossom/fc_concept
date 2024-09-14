import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class AuthNavigator extends Navigator {
  const AuthNavigator(super.goRouter);

  Future<void> goToRegister({
    String? email,
  }) async {
    return goRouter.replace(
      AuthRoutes.pageAuthRegister,
      extra: email,
    );
  }

  Future<void> goToLogin({
    String? email,
  }) async =>
      goRouter.replace(
        AuthRoutes.pageAuthLogin,
        extra: email,
      );

  Future<void> goToHome() async =>
      goRouter.replace(PlayerRoutes.pagePlayerList);
}
