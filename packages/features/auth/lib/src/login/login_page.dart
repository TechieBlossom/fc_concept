import 'package:core_design/design.dart';
import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              child: Text(
                'Login',
                style: context.typography.headlineSmall,
              ),
            ),
            SizedBox(height: AppSpacing.space5),
            SupaMagicAuth(
              onSuccess: (response) {
                print(response);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space5,
              ),
              child: SupaEmailAuth(
                onSignInComplete: (response) {
                  print(response);
                },
                onSignUpComplete: (response) {
                  print(response);
                },
                metadataFields: [
                  MetaDataField(
                    prefixIcon: const Icon(Icons.person),
                    label: 'Username',
                    key: 'username',
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Please enter something';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Divider(
              indent: AppSpacing.space4,
              endIndent: AppSpacing.space4,
            ),
            SupaSocialsAuth(
              redirectUrl:
                  'https://ilvbpyniqpybqtgtnuam.supabase.co/auth/v1/callback',
              socialButtonVariant: SocialButtonVariant.icon,
              socialProviders: const [
                OAuthProvider.google,
                OAuthProvider.facebook,
                OAuthProvider.twitch,
                OAuthProvider.twitter,
              ],
              onSuccess: (Session response) {
                print(response);
              },
              onError: (error) {
                print(error);
              },
            ),
          ],
        ),
      ),
    );
  }
}
