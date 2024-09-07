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
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space5,
      ),
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
          SizedBox(height: AppSpacing.space2),
          Wrap(
            runSpacing: AppSpacing.space3,
            spacing: AppSpacing.space3,
            children: indices
                .map((index) => Pill(pillItem: pillItems[index]))
                .toList(),
          ),
        ],
      ),
    );
  }
}
