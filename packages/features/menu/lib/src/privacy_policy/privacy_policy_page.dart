import 'package:core_design/design.dart';
import 'package:feature_menu/src/privacy_policy/markdown_privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Privacy Policy'),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.space5),
        child: Markdown(
          data: markdownPrivacyPolicy,
          styleSheet: MarkdownStyleSheet(
            strong: context.typography.body1.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colors.contentPrimary,
            ),
            p: context.typography.body1.copyWith(
              fontWeight: FontWeight.w100,
              height: 1.2,
              color: context.colors.contentPrimary,
            ),
            listBullet: context.typography.body1.copyWith(
              fontWeight: FontWeight.w900,
              color: context.colors.contentPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
