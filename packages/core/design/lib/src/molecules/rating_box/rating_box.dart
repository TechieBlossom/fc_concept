import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({
    super.key,
    required this.rating,
    required this.bg,
    required this.fg,
    this.isSmall = false,
  });

  final int? rating;
  final bool isSmall;
  final int bg;
  final int fg;

  @override
  Widget build(BuildContext context) {
    final size = isSmall ? 28.0 : 40.0;
    return rating == null
        ? const SizedBox.shrink()
        : ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: size,
              maxWidth: size,
              minHeight: size,
              maxHeight: size,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: isSmall ? smallCorner.all : mediumCorner.all,
                color: Color(bg),
                border: Border.all(
                  color: Color(fg),
                ),
              ),
              child: Center(
                child: Text(
                  rating.toString(),
                  style: context.typography.titleMediumDigit.copyWith(
                        color: Color(fg),
                      ),
                ),
              ),
            ),
          );
  }
}
