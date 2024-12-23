import 'package:core_analytics/analytics.dart';
import 'package:core_design/design.dart';
import 'package:feature_menu/src/menu/bloc/menu_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utility_di/di.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuBloc>(
      create: (_) => di<MenuBloc>(),
      child: BlocBuilder<MenuBloc, MenuState>(
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSpacing.space4),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: AppSpacing.space5,
                    ),
                    const _Header(text: 'FUT Maidaan', isSmall: false),
                    _DrawerItem(
                      text: 'Cheapest by rating',
                      leading: Icon(
                        Icons.monetization_on_rounded,
                        color: context.colors.contentPrimary,
                      ),
                      onTap: () {
                        context.read<MenuBloc>().add(
                              CheapestByRatingTap(),
                            );
                      },
                    ),
                    // _DrawerItem(
                    //   text: 'Login/Register',
                    //   leading: Icon(
                    //     Icons.login_rounded,
                    //     color: context.colors.contentPrimary,
                    //   ),
                    //   onTap: () {
                    //     context.read<MenuBloc>().add(
                    //           SignInTap(),
                    //         );
                    //   },
                    // ),
                    // const Divider(
                    //   indent: AppSpacing.space4,
                    //   endIndent: AppSpacing.space4,
                    // ),
                    // const _Header(text: 'PLAYERS'),
                    // _DrawerItem(
                    //   leading: Icon(
                    //     Icons.person_search_rounded,
                    //     color: context.colors.contentPrimary,
                    //   ),
                    //   text: 'All',
                    //   trailing: state.playerCount,
                    //   onTap: () {
                    //     context.read<MenuBloc>().add(
                    //           PlayersTap(),
                    //         );
                    //   },
                    // ),
                    // _DrawerItem(
                    //   leading: Icon(
                    //     Icons.star_rounded,
                    //     color: context.colors.contentPrimary,
                    //   ),
                    //   text: 'Popular',
                    //   onTap: () {
                    //
                    //     context.read<MenuBloc>().add(
                    //       PopularTap(),
                    //     );
                    //   },
                    // ),
                    // _DrawerItem(
                    //   leading: Icon(
                    //     Icons.bookmark_rounded,
                    //     color: context.colors.contentPrimary,
                    //   ),
                    //   text: 'Favorites',
                    //   trailing: 50,
                    //   onTap: () {},
                    // ),
                    // const Divider(
                    //   indent: AppSpacing.space4,
                    //   endIndent: AppSpacing.space4,
                    // ),
                    // _DrawerItem(
                    //   leading: Icon(
                    //     Icons.filter_alt_rounded,
                    //     color: context.colors.contentPrimary,
                    //   ),
                    //   text: 'Saved Filters',
                    //   trailing: 2,
                    //   onTap: () {},
                    // ),
                    // _DrawerItem(
                    //   leading: Icon(
                    //     Icons.compare_rounded,
                    //     color: context.colors.contentPrimary,
                    //   ),
                    //   text: 'Compare',
                    //   onTap: () {
                    //     context.read<MenuBloc>().add(
                    //           CompareTap(),
                    //         );
                    //   },
                    // ),
                    const Divider(
                      indent: AppSpacing.space4,
                      endIndent: AppSpacing.space4,
                    ),
                    const _Header(text: 'ABOUT'),
                    _DrawerItem(
                      leading: Icon(
                        Icons.business_rounded,
                        color: context.colors.contentPrimary,
                      ),
                      text: 'About Us',
                      onTap: () {
                        context.read<MenuBloc>().add(
                              AboutUsTap(),
                            );
                      },
                    ),
                    _DrawerItem(
                      leading: Icon(
                        Icons.privacy_tip_rounded,
                        color: context.colors.contentPrimary,
                      ),
                      text: 'Privacy Policy',
                      onTap: () {
                        context.read<MenuBloc>().add(
                              PrivacyPolicyTap(),
                            );
                      },
                    ),
                    // _DrawerItem(
                    //   leading: Icon(
                    //     Icons.logout_rounded,
                    //     color: context.colors.contentPrimary,
                    //   ),
                    //   text: 'Log Out',
                    //   onTap: () {
                    //     context.read<MenuBloc>().add(LogoutTap());
                    //   },
                    // ),
                    const Divider(
                      indent: AppSpacing.space4,
                      endIndent: AppSpacing.space4,
                    ),
                    const _Header(text: 'FEEDBACK'),
                    _DrawerItem(
                      leading: Icon(
                        Icons.feedback_rounded,
                        color: context.colors.contentPrimary,
                      ),
                      text: 'Feedback',
                      onTap: () => showWiredashFeedback(context),
                    ),
                    _DrawerItem(
                      leading: Icon(
                        Icons.recommend_rounded,
                        color: context.colors.contentPrimary,
                      ),
                      text: 'Would you recommend FUT Maidaan?',
                      onTap: () => showWiredashPromoterSurvey(
                        context,
                        force: true,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.space5,
                        vertical: AppSpacing.space3,
                      ),
                      child: Center(
                        child: Text(
                          'App Version 1.0.7',
                          style: context.typography.body4.copyWith(
                            color: context.colors.contentSecondary,
                          ),
                        ),
                      ),
                    ),
                    const Space(space: AppSpacing.space2),
                  ],
                ),
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
                color: context.colors.contentSecondary,
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
  });

  final String text;
  final Widget leading;
  final int? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppCornerRadius.radius2,
        ),
      ),
      selectedTileColor: context.colors.backgroundTertiary,
      leading: leading,
      title: Text(
        text,
        style: context.typography.body1.copyWith(
          color: context.colors.contentPrimary,
        ),
      ),
      trailing: trailing != null
          ? Text(
              AppFormatter.formatCurrency(trailing!),
              style: context.typography.body2.copyWith(
                color: context.colors.contentPrimary,
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
