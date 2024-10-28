import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/attribute/attribute_item.dart';
import 'package:flutter/material.dart';

class AttributeBar extends StatelessWidget {
  const AttributeBar({super.key, required this.attributeItem});

  final AttributeItem attributeItem;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
        color: attributeItem.lightRatingColor,
        border: BorderDirectional(
          start: BorderSide(
            color: attributeItem.ratingColor,
            width: 2,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space2,
          vertical: AppSpacing.space3,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                attributeItem.attribute,
                textAlign: TextAlign.start,
                style: context.typography.caption1,
              ),
            ),
            const SizedBox(width: AppSpacing.space1),
            if (attributeItem.boost != null && attributeItem.boost != 0) ...[
              Text(
                '+${attributeItem.boost}',
                style: context.typography.caption2.copyWith(
                  color: attributeItem.ratingColor,
                ),
              ),
              const SizedBox(width: AppSpacing.space3),
            ],
            Text(
              (attributeItem.rating + (attributeItem.boost ?? 0)).toString(),
              style: context.typography.body5.copyWith(
                color: attributeItem.ratingColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
