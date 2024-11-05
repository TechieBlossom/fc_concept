import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/attribute/attribute.dart';
import 'package:core_design/src/molecules/attribute/attribute_item.dart';
import 'package:core_design/src/molecules/glass/glass.dart';
import 'package:flutter/material.dart';

class AttributesCard extends StatelessWidget {
  const AttributesCard({
    super.key,
    required this.paceRating,
    required this.shootRating,
    required this.passRating,
    required this.dribbleRating,
    required this.defendRating,
    required this.physicalRating,
    this.isGK = false,
  });

  /// Speed for GK
  final int paceRating;

  /// Kicking for GK
  final int shootRating;

  /// Handling for GK
  final int passRating;

  /// Reflexes for GK
  final int dribbleRating;

  /// Positioning for GK
  final int defendRating;

  /// Diving for GK
  final int physicalRating;
  final bool isGK;

  @override
  Widget build(BuildContext context) {
    return Glass.lessBlur(
      borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
          color: context.colors.contentSecondary.withOpacity(0.2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.space3,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (isGK) ...[
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'DIV', rating: physicalRating, boost: 0),
                ),
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'HAN', rating: passRating, boost: 0),
                ),
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'KIC', rating: shootRating, boost: 0),
                ),
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'REF', rating: dribbleRating, boost: 0),
                ),
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'SPD', rating: paceRating, boost: 0),
                ),
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'POS', rating: defendRating, boost: 0),
                ),
              ] else ...[
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'PAC', rating: paceRating, boost: 0),
                ),
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'SHO', rating: shootRating, boost: 0),
                ),
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'PAS', rating: passRating, boost: 0),
                ),
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'DRI', rating: dribbleRating, boost: 0),
                ),
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'DEF', rating: defendRating, boost: 0),
                ),
                Attribute(
                  attributeItem: AttributeItem(
                      attribute: 'PHY', rating: physicalRating, boost: 0),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
