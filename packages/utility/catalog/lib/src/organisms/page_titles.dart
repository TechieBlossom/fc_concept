import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class PageTitles extends StatelessWidget {
  const PageTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Page Title'),
      body: ListView(
        children: [
          const SizedBox(height: AppSpacing.space5),
          const PageTitle(title: 'Only Title'),
          const SizedBox(height: AppSpacing.space5),
          PageTitle(
            title: 'With Action',
            action: 'Compare',
            onAction: () {},
          ),
          const SizedBox(height: AppSpacing.space5),
          PageTitle(
            action: 'Compare',
            onAction: () {},
          ),
          const SizedBox(height: AppSpacing.space5),
          const PageTitle(),
          const SizedBox(height: AppSpacing.space5),
          PageTitle(
            isSmall: true,
            title: 'Small',
            action: 'Compare',
            onAction: () {},
          ),
        ],
      ),
    );
  }
}
