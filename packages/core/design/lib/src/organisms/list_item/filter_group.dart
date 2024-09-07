import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:flutter/material.dart';

class FilterGroup extends StatelessWidget {
  const FilterGroup({
    super.key,
    this.title,
    required this.pillItems,
  });

  final String? title;
  final List<PillItem> pillItems;

  @override
  Widget build(BuildContext context) {
    final indices = Iterable.generate(pillItems.length);
    return Padding(
      padding: spacingXL.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (title != null)
            Text(
              title!,
              style: context.typography.labelSmall.copyWith(
                    color: context.colors.contentSecondary,
                  ),
            ),
          SizedBox(height: spacingS.value),
          Wrap(
            runSpacing: spacingM.value,
            spacing: spacingM.value,
            children: indices
                .map((index) => Pill(pillItem: pillItems[index]))
                .toList(),
          ),
        ],
      ),
    );
  }
}
