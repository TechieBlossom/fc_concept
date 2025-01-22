import 'package:core_design/design.dart';
import 'package:feature_auth/src/register/bloc/register_bloc.dart';
import 'package:feature_auth/src/register/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utility_di/di.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({
    super.key,
    this.email,
  });

  final String? email;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (_) => di<RegisterBloc>(),
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return Material(
            child: Stack(
              children: [
                // Positioned.fill(
                //   child: AppAssets.images.loginBg.image(
                //     fit: BoxFit.fitWidth,
                //   ),
                // ),
                Positioned(
                  top: 128,
                  left: 16,
                  right: 16,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.space6,
                          vertical: AppSpacing.space5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppCornerRadius.radius3,
                          ),
                          color: context.colors.backgroundPrimary,
                        ),
                        child: Column(
                          children: [
                            // AppAssets.images.appLogo.image(
                            //   width: 200,
                            //   height: 200,
                            // ),
                            Text(
                              'Create an account',
                              style: context.typography.headline,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: AppSpacing.space5),
                              child: RegisterForm(
                                state: context.read<RegisterBloc>().state,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: AppSpacing.space8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppSpacing.space2,
                                ),
                                child: Text(
                                  'By registering, you agree to our',
                                  textAlign: TextAlign.right,
                                  style: context.typography.body1.copyWith(
                                    color: context.colors.backgroundSecondary,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: LinkButton(
                                reverseTheme: true,
                                text: 'Terms & Conditions',
                                onPressed: () {},
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
