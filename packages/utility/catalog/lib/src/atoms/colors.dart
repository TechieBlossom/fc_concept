import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class ColorsContent extends StatelessWidget {
  const ColorsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      context.colors.backgroundTertiary,
      context.colors.contentSecondary,
      context.colors.backgroundPrimary,
      Theme.of(context).colorScheme.onPrimaryContainer,
      context.colors.contentTertiary,
      context.colors.backgroundSecondary,
      context.colors.backgroundSecondary,
      context.colors.gold,
      context.colors.contentPrimary,
      context.colors.backgroundFour,
      Theme.of(context).colorScheme.onTertiaryContainer,
      Theme.of(context).colorScheme.outline,
      context.colors.gold2,
      context.colors.red,
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
