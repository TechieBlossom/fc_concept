import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_design/src/molecules/tappable/app_tappable.dart';
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
  });
  // : assert(
  //     (selectedPills?.length == 0 && subtitle != null) ||
  //         (selectedPills?.length != 0 && subtitle == null),
  //   );

  final String title;
  final String? subtitle;
  final List<PillItem>? selectedPills;
  final VoidCallback? onTap;
  final double pillGap;
  final double margin;

  bool get _isDisabled => onTap == null;

  @override
  Widget build(BuildContext context) {
    final textColor = _isDisabled
        ? context.colors.contentSecondary
        : context.colors.contentPrimary;
    return AppTappable(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(
          minHeight: 66,
          maxHeight: 66,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: margin,
                      bottom: AppSpacing.space3,
                    ),
                    child: Text(
                      title,
                      style: context.typography.body3.copyWith(
                        color: textColor,
                      ),
                    ),
                  ),
                  if ((selectedPills?.isEmpty ?? true) && subtitle != null)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: margin),
                      child: Text(
                        subtitle!,
                        style: context.typography.caption1.copyWith(
                          color: context.colors.contentSecondary,
                        ),
                      ),
                    ),
                  if (selectedPills?.isNotEmpty ?? false)
                    _Options(
                      pills: selectedPills!,
                      pillGap: pillGap,
                      margin: margin,
                    )
                ],
              ),
            ),
            SizedBox(
              height: AppSpacing.space2,
            ),
            if (selectedPills == null)
              Padding(
                padding: EdgeInsets.only(right: margin),
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
  final double pillGap;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 36,
        maxHeight: 36,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: pills.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: (index == 0
                    ? EdgeInsets.only(left: margin)
                    : EdgeInsets.only(left: pillGap)) +
                (index == (pills.length - 1)
                    ? EdgeInsets.only(right: pillGap)
                    : EdgeInsets.zero),
            child: Pill(pillItem: pills[index]),
          );
        },
      ),
    );
  }
}
