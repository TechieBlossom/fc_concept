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
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space4,
              ),
              child: ListView(
                children: [
                  const SizedBox(
                    height: AppSpacing.space5,
                  ),
                  const _Header(text: 'FC Concept', isSmall: false),
                  _DrawerItem(
                    text: 'Login/Register',
                    leading: Icon(
                      Icons.login_rounded,
                      color: context.colors.contentSecondary,
                    ),
                    onTap: () {
                      scaffoldKey.currentState?.closeDrawer();
                      context.read<bloc.AppDrawerBloc>().add(
                            bloc.SignInTap(),
                          );
                    },
                  ),
                  const Divider(
                    indent: AppSpacing.space4,
                    endIndent: AppSpacing.space4,
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
                  const Divider(
                    indent: AppSpacing.space4,
                    endIndent: AppSpacing.space4,
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
                  const Divider(
                    indent: AppSpacing.space4,
                    endIndent: AppSpacing.space4,
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
                    onTap: () {
                      context.read<bloc.AppDrawerBloc>().add(bloc.LogoutTap());
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.space5,
                      vertical: AppSpacing.space3,
                    ),
                    child: Center(
                      child: Text(
                        'App Version 1.0.0',
                        style: context.typography.body4.copyWith(
                          color: context.colors.contentTertiary,
                        ),
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
      padding: const EdgeInsets.all(AppSpacing.space5),
      child: Text(
        text,
        style: isSmall
            ? context.typography.caption1.copyWith(
                color: context.colors.contentTertiary,
              )
            : context.typography.largeTitle.copyWith(
                color: context.colors.contentPrimary,
              ),
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppCornerRadius.radius2,
        ),
      ),
      selectedTileColor: context.colors.backgroundTertiary70,
      selected: isSelected,
      leading: leading,
      title: Text(
        text,
        style: context.typography.body1.copyWith(
          color: context.colors.contentSecondary,
        ),
      ),
      trailing: trailing != null
          ? Text(
              AppFormatter.formatCurrency(trailing!),
              style: context.typography.body2.copyWith(
                color: context.colors.contentSecondary,
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
