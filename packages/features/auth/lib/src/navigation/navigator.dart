import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class AuthNavigator extends Navigator {
  const AuthNavigator(super.goRouter);
}
