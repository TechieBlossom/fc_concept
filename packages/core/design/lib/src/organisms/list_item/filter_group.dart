import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:flutter/material.dart';

class FilterGroup<T> extends StatelessWidget {
  const FilterGroup({
    super.key,
    this.title,
    required this.pillItems,
  });

  final String? title;
  final List<PillItem<T>> pillItems;

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
              style: context.typography.body1.copyWith(
                color: context.colors.contentPrimary,
              ),
            ),
          SizedBox(height: AppSpacing.space5),
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: AppSpacing.space3,
              mainAxisSpacing: AppSpacing.space3,
              childAspectRatio: 4,
            ),
            children: indices
                .map<Widget>((index) => Pill<T>(pillItem: pillItems[index]))
                .toList(),
          ),
        ],
      ),
    );
  }
}
