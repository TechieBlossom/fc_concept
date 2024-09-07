import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:flutter/material.dart';

class NestedFilterItem extends StatelessWidget {
  const NestedFilterItem({
    super.key,
    required this.title,
    this.subtitle,
    required this.pillGap,
    required this.margin,
    this.selectedPills,
    this.onTap,
  }) : assert(
          (selectedPills == null && subtitle != null) ||
              (selectedPills != null && subtitle == null),
        );

  final String title;
  final String? subtitle;
  final List<PillItem>? selectedPills;
  final VoidCallback? onTap;
  final Spacing pillGap;
  final Spacing margin;

  bool get _isDisabled => onTap == null;

  @override
  Widget build(BuildContext context) {
    final textColor = _isDisabled
        ? context.colors.contentTertiary
        : context.colors.contentSecondary;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: spacingS.vertical,
        constraints: BoxConstraints(
          minHeight: 62,
          maxHeight: 62,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: margin.left + spacingS.bottom,
                    child: Text(
                      title,
                      style: context.typography.labelSmall.copyWith(
                            color: textColor,
                          ),
                    ),
                  ),
                  if (selectedPills == null && subtitle != null)
                    Padding(
                      padding: margin.horizontal,
                      child: Text(
                        subtitle!,
                        style: context.typography.bodySmall.copyWith(
                              color: textColor,
                            ),
                      ),
                    ),
                  if (selectedPills != null)
                    _Options(
                      pills: selectedPills!,
                      pillGap: pillGap,
                      margin: margin,
                    )
                ],
              ),
            ),
            SizedBox(
              height: spacingS.value,
            ),
            if (selectedPills == null)
              Padding(
                padding: margin.right,
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 16,
                  color: textColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _Options extends StatelessWidget {
  const _Options({
    required this.pills,
    required this.pillGap,
    required this.margin,
  });

  final List<PillItem> pills;
  final Spacing pillGap;
  final Spacing margin;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 28,
        maxHeight: 28,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: pills.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: (index == 0 ? margin.left : pillGap.left) +
                (index == (pills.length - 1) ? pillGap.right : EdgeInsets.zero),
            child: Pill(pillItem: pills[index]),
          );
        },
      ),
    );
  }
}
