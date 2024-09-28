import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Attribute extends StatelessWidget {
  const Attribute({
    super.key,
    required this.attributeItem,
  });

  final AttributeItem attributeItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          attributeItem.attribute.toUpperCase(),
          style: context.typography.caption2,
        ),
        SizedBox(height: AppSpacing.space2),
        Text(
          attributeItem.rating.toString(),
          style: context.typography.body5.copyWith(
            color: attributeItem.ratingColor,
          ),
        ),
      ],
    );
  }
}
