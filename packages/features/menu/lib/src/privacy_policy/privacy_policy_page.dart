import 'package:core_design/design.dart';
import 'package:feature_menu/src/privacy_policy/markdown_privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageTitle(title: 'Privacy Policy'),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.space5),
        child: Markdown(data: markdownPrivacyPolicy),
        ),
      );
  }
}
