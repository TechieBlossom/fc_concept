import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class MenuNavigator extends AppNavigator {
  const MenuNavigator(super.goRouter);

  Future<List<T>?> goToCheapestByRating<T>() =>
      goRouter.push(PlayerRoutes.pagePlayerListByRating);
}
