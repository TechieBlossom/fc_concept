import 'package:core_design/design.dart';
import 'package:feature_drawer/src/app_drawer/bloc/app_drawer_bloc.dart'
    as bloc;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utility_di/di.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<bloc.AppDrawerBloc>(
      create: (_) => di<bloc.AppDrawerBloc>(),
      child: BlocBuilder<bloc.AppDrawerBloc, bloc.AppDrawerState>(
        builder: (context, state) {
          return Drawer(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            child: Padding(
              padding: spacingL.horizontal,
              child: ListView(
                children: [
                  SizedBox(
                    height: spacingXL.value,
                  ),
                  const _Header(text: 'FC Concept', isSmall: false),
                  _DrawerItem(
                    text: 'Login/Register',
                    leading: Icon(
                      Icons.login_rounded,
                      color: context.colors.contentSecondary,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    indent: spacingL.value,
                    endIndent: spacingL.value,
                  ),
                  const _Header(text: 'PLAYERS'),
                  _DrawerItem(
                    leading: Icon(
                      Icons.person_search_rounded,
                      color: context.colors.contentSecondary,
                    ),
                    text: 'All',
                    trailing: state.playerCount,
                    isSelected: true,
                    onTap: () {
                      scaffoldKey.currentState?.closeDrawer();
                      context.read<bloc.AppDrawerBloc>().add(
                        bloc.PlayersTap(),
                      );
                    },
                  ),
                  // _DrawerItem(
                  //   leading: Icon(
                  //     Icons.star_rounded,
                  //     color: context.colors.contentSecondary,
                  //   ),
                  //   text: 'Popular',
                  //   onTap: () {
                  //     scaffoldKey.currentState?.closeDrawer();
                  //     context.read<bloc.AppDrawerBloc>().add(
                  //       bloc.PopularTap(),
                  //     );
                  //   },
                  // ),
                  _DrawerItem(
                    leading: Icon(
                      Icons.bookmark_rounded,
                      color: context.colors.contentSecondary,
                    ),
                    text: 'Favorites',
                    trailing: 50,
                    onTap: () {},
                  ),
                  Divider(
                    indent: spacingL.value,
                    endIndent: spacingL.value,
                  ),
                  _DrawerItem(
                    leading: Icon(
                      Icons.filter_alt_rounded,
                      color: context.colors.contentSecondary,
                    ),
                    text: 'Saved Filters',
                    trailing: 2,
                    onTap: () {},
                  ),
                  _DrawerItem(
                    leading: Icon(
                      Icons.compare_rounded,
                      color: context.colors.contentSecondary,
                    ),
                    text: 'Compare',
                    onTap: () {
                      scaffoldKey.currentState?.closeDrawer();
                      context.read<bloc.AppDrawerBloc>().add(
                            bloc.CompareTap(),
                          );
                    },
                  ),
                  Divider(
                    indent: spacingL.value,
                    endIndent: spacingL.value,
                  ),
                  const _Header(text: 'ABOUT'),
                  _DrawerItem(
                    leading: Icon(
                      Icons.security_rounded,
                      color: context.colors.contentSecondary,
                    ),
                    text: 'Privacy Policy',
                    onTap: () {},
                  ),
                  _DrawerItem(
                    leading: Icon(
                      Icons.settings_rounded,
                      color: context.colors.contentSecondary,
                    ),
                    text: 'Settings',
                    onTap: () {},
                  ),
                  _DrawerItem(
                    leading: Icon(
                      Icons.logout_rounded,
                      color: context.colors.contentSecondary,
                    ),
                    text: 'Log Out',
                    onTap: () {},
                  ),
                  Padding(
                    padding: spacingXL.horizontal + spacingM.vertical,
                    child: Center(
                      child: Text(
                        'App Version 1.0.0',
                        style: context.typography.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.text,
    this.isSmall = true,
  });

  final String text;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: spacingXL.all,
      child: Text(
        text,
        style: isSmall
            ? context.typography.labelSmall.copyWith(
                  color: context.colors.contentTertiary,
                )
            : context.typography.headlineSmall,
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.text,
    required this.leading,
    required this.onTap,
    this.trailing,
    this.isSelected = false,
  });

  final String text;
  final Widget leading;
  final int? trailing;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      shape: RoundedRectangleBorder(borderRadius: mediumCorner.all),
      selectedTileColor: context.colors.backgroundTertiary,
      selected: isSelected,
      leading: leading,
      title: Text(
        text,
        style: context.typography.labelMedium,
      ),
      trailing: trailing != null
          ? Text(
              currencyFormatter.format(trailing),
              style: context.typography.labelMediumDigit,
            )
          : const SizedBox.shrink(),
    );
  }
}
