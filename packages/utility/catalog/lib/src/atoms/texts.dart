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
          padding: const EdgeInsets.all(AppSpacing.space3),
          children: [
            Text(
              'Large Title',
              style: context.typography.largeTitle,
            ),
            Text(
              'Title 3',
              style: context.typography.title3,
            ),
            Text(
              'Headline',
              style: context.typography.headline,
            ),
            Text(
              'Body 1',
              style: context.typography.body1,
            ),
            Text(
              'Body 2',
              style: context.typography.body2,
            ),
            Text(
              'Body 3',
              style: context.typography.body3,
            ),
            Text(
              'Body 4',
              style: context.typography.body4,
            ),
            Text(
              'Body 5',
              style: context.typography.body5,
            ),
            Text(
              'Caption 1',
              style: context.typography.caption1,
            ),
            Text(
              'Caption 2',
              style: context.typography.caption2,
            ),
          ],
        ),
      ),
    );
  }
}
