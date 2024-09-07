import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:flutter/material.dart';

class CollapsibleCard extends StatefulWidget {
  const CollapsibleCard({
    super.key,
    required this.heading,
    required this.compareItems,
    this.margin,
  });

  final String heading;
  final List<CompareItem> compareItems;
  final EdgeInsets? margin;

  @override
  State<CollapsibleCard> createState() => _CollapsibleCardState();
}

class _CollapsibleCardState extends State<CollapsibleCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> compareItemsHeightAnimation;
  late Animation<double> opacityAnimation;
  late Animation<int> isCollapsedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    isCollapsedAnimation = StepTween(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0),
      ),
    );

    // 20 is height of Compare Item, 16 is vertical margin and 4 is gap between compare items
    compareItemsHeightAnimation = Tween<double>(
      begin: widget.compareItems.length * 20.0 +
          16 +
          (widget.compareItems.length * 4),
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.3, 1.0),
      ),
    );

    opacityAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.3),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void runAnimation() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) => Container(
        margin: widget.margin ??
            const EdgeInsets.symmetric(
              horizontal: AppSpacing.space3,
            ),
        child: Column(
          children: [
            Ornament(
              ornamentType: OrnamentType.full,
              label: widget.heading,
              borderRadius: isCollapsedAnimation.value > 0.5
                  ? BorderRadius.circular(AppCornerRadius.radius2)
                  : mediumCorner.top,
              icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 16),
              onTap: runAnimation,
            ),
            Container(
              height: compareItemsHeightAnimation.value,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: context.colors.gold2,
                ),
                borderRadius: mediumCorner.bottom,
                color: context.colors.backgroundFour,
              ),
              child: Opacity(
                opacity: opacityAnimation.value,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: AppSpacing.space3,
                    bottom: AppSpacing.space2,
                  ),
                  child: Column(
                    children: widget.compareItems
                        .map(
                          (compareItem) => Padding(
                            padding: const EdgeInsets.only(
                              bottom: AppSpacing.space2,
                            ),
                            child: Compare(
                              compareItem: compareItem,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
