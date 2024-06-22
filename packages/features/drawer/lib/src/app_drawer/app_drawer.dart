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
      child: BlocBuilder<bloc.AppDrawerBloc, void>(
        builder: (context, _) {
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
                      color: Theme.of(context).colorScheme.primary,
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
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    text: 'Players',
                    trailing: 21581,
                    isSelected: true,
                    onTap: () {},
                  ),
                  _DrawerItem(
                    leading: Icon(
                      Icons.star_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    text: 'Popular',
                    onTap: () {},
                  ),
                  _DrawerItem(
                    leading: Icon(
                      Icons.bookmark_rounded,
                      color: Theme.of(context).colorScheme.primary,
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
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    text: 'Saved Filters',
                    trailing: 2,
                    onTap: () {},
                  ),
                  _DrawerItem(
                    leading: Icon(
                      Icons.compare_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    text: 'Compare',
                    onTap: () {
                      scaffoldKey.currentState?.closeDrawer();
                      context.read<bloc.AppDrawerBloc>().add(
                            bloc.Compare(),
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
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    text: 'Privacy Policy',
                    onTap: () {},
                  ),
                  _DrawerItem(
                    leading: Icon(
                      Icons.settings_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    text: 'Settings',
                    onTap: () {},
                  ),
                  _DrawerItem(
                    leading: Icon(
                      Icons.logout_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    text: 'Log Out',
                    onTap: () {},
                  ),
                  Padding(
                    padding: spacingXL.horizontal + spacingM.vertical,
                    child: Center(
                      child: Text(
                        'App Version 1.0.0',
                        style: context.bodySmall(),
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
            ? context.labelSmall().copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                )
            : context.headlineSmall(),
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
      selectedTileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      selected: isSelected,
      leading: leading,
      title: Text(
        text,
        style: context.labelMedium(),
      ),
      trailing: trailing != null
          ? Text(
              currencyFormatter.format(trailing),
              style: context.labelMediumDigit(),
            )
          : const SizedBox.shrink(),
    );
  }
}
