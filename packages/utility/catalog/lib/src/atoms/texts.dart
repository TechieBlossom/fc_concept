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
              style: context.headlineSmall(),
            ),
            Text(
              'Headline Small Digit',
              style: context.headlineSmallDigit(),
            ),
            Text(
              'Title Medium',
              style: context.titleMedium(),
            ),
            Text(
              'Title Medium Digit',
              style: context.titleMediumDigit(),
            ),
            Text(
              'Title Small',
              style: context.titleSmall(),
            ),
            Text(
              'Label Medium',
              style: context.labelMedium(),
            ),
            Text(
              'Label Medium Digit',
              style: context.labelMediumDigit(),
            ),
            Text(
              'Body Medium',
              style: context.bodyMedium(),
            ),
            Text(
              'Body Small',
              style: context.bodySmall(),
            ),
            Text(
              'Label Small',
              style: context.labelSmall(),
            ),
            Text(
              'Label Small Digit',
              style: context.labelSmallDigit(),
            ),
          ],
        ),
      ),
    );
  }
}
