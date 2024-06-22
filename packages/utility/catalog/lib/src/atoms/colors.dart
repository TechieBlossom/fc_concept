import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class ColorsContent extends StatelessWidget {
  const ColorsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      Theme.of(context).colorScheme.surface,
      Theme.of(context).colorScheme.surfaceContainerHighest,
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.onPrimary,
      Theme.of(context).colorScheme.onPrimaryContainer,
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.secondaryContainer,
      Theme.of(context).colorScheme.onSecondaryContainer,
      Theme.of(context).colorScheme.tertiary,
      Theme.of(context).colorScheme.onTertiary,
      Theme.of(context).colorScheme.tertiaryContainer,
      Theme.of(context).colorScheme.onTertiaryContainer,
      Theme.of(context).colorScheme.outline,
      Theme.of(context).colorScheme.outlineVariant,
      Theme.of(context).colorScheme.errorContainer,
      Theme.of(context).colorScheme.onErrorContainer,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: Wrap(
        children: [
          ...colors.map(
            (color) => Container(
              margin: spacingM.all,
              decoration: BoxDecoration(
                color: color,
                border: Border.all(),
                shape: BoxShape.circle,
              ),
              width: 80,
              height: 80,
              child: Center(child: Text(_toHex(color))),
            ),
          ),
        ],
      ),
    );
  }

  String _toHex(Color color, {bool leadingHashSign = true}) =>
      '${leadingHashSign ? '#' : ''}'
      '${color.alpha.toRadixString(16).padLeft(2, '0')}'
      '${color.red.toRadixString(16).padLeft(2, '0')}'
      '${color.green.toRadixString(16).padLeft(2, '0')}'
      '${color.blue.toRadixString(16).padLeft(2, '0')}';
}
