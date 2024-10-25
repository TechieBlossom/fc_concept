import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

enum RatingBoxSize {
  small,
  medium,
}

class RatingBox extends StatelessWidget {
  const RatingBox({
    super.key,
    required this.rating,
    required this.bg,
    required this.fg,
    required this.size,
  });

  final int? rating;
  final RatingBoxSize size;
  final int bg;
  final int fg;

  @override
  Widget build(BuildContext context) {
    final width = switch (size) {
      RatingBoxSize.small => 18.0,
      RatingBoxSize.medium => 28.0,
    };
    final style = switch (size) {
      RatingBoxSize.small => context.typography.caption2,
      RatingBoxSize.medium => context.typography.body2,
    };
    final borderRadius = switch (size) {
      RatingBoxSize.small => BorderRadius.circular(AppCornerRadius.radius1),
      RatingBoxSize.medium => BorderRadius.circular(AppCornerRadius.radius1),
    };
    return rating == null
        ? const SizedBox.shrink()
        : ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: width,
              maxWidth: width,
              minHeight: width,
              maxHeight: width,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                border: Border.all(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignInside,
                  color: Color(fg),
                ),
                color: Color(bg),
              ),
              child: Padding(
                padding: size == RatingBoxSize.small
                    ? const EdgeInsets.only(top: 2)
                    : const EdgeInsets.only(top: 5),
                child: Text(
                  rating.toString(),
                  textAlign: TextAlign.center,
                  style: style.copyWith(color: Color(fg)),
                ),
              ),
            ),
          );
  }
}
