import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:flutter/material.dart';

class PullDown extends StatefulWidget {
  const PullDown({
    super.key,
    required this.heading,
    required this.items,
    required this.onItemTapped,
    this.margin,
    this.pullDownButtonType = PullDownButtonType.compact,
    this.constrainedWidth,
  }) : assert(
          (constrainedWidth != null &&
                  pullDownButtonType == PullDownButtonType.compact) ||
              (constrainedWidth == null &&
                  pullDownButtonType == PullDownButtonType.full),
        );

  final String heading;
  final List<(int, int, String)> items;
  final EdgeInsets? margin;
  final PullDownButtonType pullDownButtonType;
  final double? constrainedWidth;
  final void Function((int, int, String)) onItemTapped;

  @override
  State<PullDown> createState() => _PullDownState();
}

class _PullDownState extends State<PullDown>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> compareItemsHeightAnimation;
  late Animation<double> opacityAnimation;
  late Animation<int> isCollapsedAnimation;

  late (int, int, String) selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.items[0];
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    isCollapsedAnimation = StepTween(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5),
      ),
    );

    compareItemsHeightAnimation = Tween<double>(
      begin: 0,
      end: widget.items.length * 20.0 + 12 + (widget.items.length * 4),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.7),
      ),
    );

    opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.7, 1.0),
      ),
    );
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   // 20 is height of Compare Item, 13 is vertical margin + divider + divider margin and 4 is gap between compare items
  //   compareItemsHeightAnimation = Tween<double>(
  //     begin: 0,
  //     end: widget.items.length * 20.0 + 12 + (widget.items.length * 4),
  //   ).animate(
  //     CurvedAnimation(
  //       parent: _controller,
  //       curve: Interval(0.0, 0.7),
  //     ),
  //   );
  // }

  @override
  void didUpdateWidget(covariant PullDown oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 20 is height of Compare Item, 13 is vertical margin + divider + divider margin and 4 is gap between compare items
    compareItemsHeightAnimation = Tween<double>(
      begin: 0,
      end: widget.items.length * 20.0 + 12 + (widget.items.length * 4),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.7),
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
      key: widget.key,
      animation: _controller,
      builder: (context, _) => Container(
        margin: widget.margin ??
            const EdgeInsets.symmetric(
              horizontal: AppSpacing.space3,
            ),
        child: Column(
          children: [
            PullDownButton(
              constrainedWidth: widget.constrainedWidth,
              pullDownButtonType: widget.pullDownButtonType,
              label: widget.heading,
              borderRadius: isCollapsedAnimation.value > 0.5
                  ? BorderRadius.circular(AppCornerRadius.radius2)
                  : mediumCorner.top,
              icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 16),
              onTap: runAnimation,
            ),
            Container(
              width: widget.constrainedWidth ?? double.infinity,
              height: compareItemsHeightAnimation.value,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide.none,
                  bottom: BorderSide(
                    width: 1,
                    color: context.colors.contentSecondary,
                  ),
                  left: BorderSide(
                    width: 1,
                    color: context.colors.contentSecondary,
                  ),
                  right: BorderSide(
                    width: 1,
                    color: context.colors.contentSecondary,
                  ),
                ),
                borderRadius: mediumCorner.bottom,
              ),
              child: Opacity(
                opacity: opacityAnimation.value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacing.space2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: widget.items
                        .map(
                          (item) => InkWell(
                            onTap: () {
                              runAnimation();
                              selectedItem = item;
                              widget.onItemTapped(
                                (
                                  selectedItem.$1,
                                  selectedItem.$2,
                                  selectedItem.$3,
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: AppSpacing.space3,
                                vertical: AppSpacing.space2,
                              ),
                              child: Text(
                                item.$3,
                                style: context.typography.bodySmall,
                              ),
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
