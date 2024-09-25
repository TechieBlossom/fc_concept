import 'package:core_design/design.dart';
import 'package:feature_auth/src/login/bloc/login_bloc.dart';
import 'package:feature_auth/src/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utility_di/di.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
    this.email,
  });

  final String? email;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<LoginBloc>(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Material(
            child: Stack(
              children: [
                Positioned.fill(
                  child: AppAssets.images.loginBg.image(
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  top: 128,
                  left: 16,
                  right: 16,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppSpacing.space5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppCornerRadius.radius3,
                          ),
                          color: context.colors.backgroundPrimary,
                        ),
                        child: Column(
                          children: [
                            AppAssets.images.appLogo.image(
                              width: 200,
                              height: 200,
                            ),
                            Text(
                              'Sign in to your account',
                              style: context.typography.headline,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: AppSpacing.space5,
                              ),
                              child: LoginForm(state: state),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: AppSpacing.space7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: AppSpacing.space2,
                              ),
                              child: Text(
                                'Not a member?',
                                style: context.typography.body1.copyWith(
                                  color: context.colors.backgroundTertiary,
                                ),
                              ),
                            ),
                            LinkButton(
                              reverseTheme: true,
                              text: 'Create an account',
                              onPressed: () => context.read<LoginBloc>().add(
                                    const CreateAccountTap(),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
