import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class TextsContent extends StatelessWidget {
  const TextsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Texts'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: spacingM.all,
          children: [
            Text(
              'Headline Small',
              style: context.typography.headlineSmall,
            ),
            Text(
              'Headline Small Digit',
              style: context.typography.headlineSmallDigit,
            ),
            Text(
              'Title Medium',
              style: context.typography.titleMedium,
            ),
            Text(
              'Title Medium Digit',
              style: context.typography.titleMediumDigit,
            ),
            Text(
              'Title Small',
              style: context.typography.titleSmall,
            ),
            Text(
              'Label Medium',
              style: context.typography.labelMedium,
            ),
            Text(
              'Label Medium Digit',
              style: context.typography.labelMediumDigit,
            ),
            Text(
              'Body Medium',
              style: context.typography.bodyMedium,
            ),
            Text(
              'Body Small',
              style: context.typography.bodySmall,
            ),
            Text(
              'Label Small',
              style: context.typography.labelSmall,
            ),
            Text(
              'Label Small Digit',
              style: context.typography.labelSmallDigit,
            ),
          ],
        ),
      ),
    );
  }
}
