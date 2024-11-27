import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@lazySingleton
class MenuNavigator extends AppNavigator {
  const MenuNavigator(super.goRouter);

  Future<List<T>?> goToCheapestByRating<T>() =>
      goRouter.push(PlayerRoutes.pagePlayerListByRating);

  // Future<bool> goToPrivacyPolicy() async {
  //   return launchUrl(
  //       Uri.parse(
  //         'https://techieblossom.hashnode.dev/fut-maidaan-privacy-policy',
  //       ),
  //       mode: LaunchMode.inAppBrowserView,
  //     );
  // }

  Future<void> goToAboutUs() => goRouter.push(MenuRoutes.pageAboutUs);

  Future<void> goToPrivacyPolicy() =>
      goRouter.push(MenuRoutes.pagePrivacyPolicy);
}
