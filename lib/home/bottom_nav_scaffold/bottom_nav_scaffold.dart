import 'package:core_design/design.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavScaffold extends StatelessWidget {
  const BottomNavScaffold({
    Key? key,
    required this.navigationShell,
    required this.destinations,
  }) : super(key: key ?? const ValueKey<String>('BottomNavScaffold'));

  final StatefulNavigationShell navigationShell;
  final List<BottomNavigationBarItem> destinations;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: navigationShell,
        bottomNavigationBar: Glass.lessBlur(
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: context.colors.backgroundSecondary.withAlpha(25),
            ),
            child: BottomNavigationBar(
              elevation: 0,
              useLegacyColorScheme: false,
              currentIndex: navigationShell.currentIndex,
              onTap: navigationShell.goBranch,
              selectedItemColor: context.colors.contentPrimary,
              unselectedItemColor: context.colors.contentSecondary,
              selectedLabelStyle: context.typography.body3,
              type: BottomNavigationBarType.shifting,
              items: destinations,
            ),
          ),
        ),
        // bottomNavigationBar:
        //     Theme.of(context).platform == TargetPlatform.android
        //         ? BottomNavigationBar(
        //             currentIndex: navigationShell.currentIndex,
        //             onTap: navigationShell.goBranch,
        //             selectedItemColor: context.colors.contentPrimary,
        //             unselectedItemColor: context.colors.contentSecondary,
        //             items: destinations,
        //           )
        //         : CupertinoTabBar(
        //             currentIndex: navigationShell.currentIndex,
        //             onTap: navigationShell.goBranch,
        //             activeColor: context.colors.contentPrimary,
        //             inactiveColor: context.colors.contentSecondary,
        //             items: destinations,
        //           ),
      );
}
