import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

enum LabelPlacement {
  start,
  end,
}

class RangeThumb extends StatefulWidget {
  const RangeThumb({
    super.key,
    required this.index,
    required this.label,
    required this.labelPlacement,
    required this.onDrag,
  });

  final int index;
  final Widget label;
  final LabelPlacement labelPlacement;
  final void Function(double, double)? onDrag;

  @override
  State<RangeThumb> createState() => _RangeThumbState();
}

class _RangeThumbState extends State<RangeThumb> {
  late double initX;
  late double initY;

  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  void _RangeThumbDrag(DragStartDetails details) {
    setState(() {
      initX = details.globalPosition.dx;
      initY = details.globalPosition.dy;
    });
  }

  void _RangeThumbUpdate(DragUpdateDetails details) {
    final dx = details.globalPosition.dx - initX;
    final dy = details.globalPosition.dy - initY;
    initX = details.globalPosition.dx;
    initY = details.globalPosition.dy;
    print('${details.globalPosition.dx} && ${details.localPosition.dx}');
    widget.onDrag?.call(dx, dy);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onPanStart: _RangeThumbDrag,
      // onPanUpdate: _RangeThumbUpdate,
      onHorizontalDragUpdate: _RangeThumbUpdate,
      onHorizontalDragStart: _RangeThumbDrag,
      behavior: HitTestBehavior.opaque,
      onLongPressDown: (_) {
        focusNode.requestFocus();
      },
      onTap: () {
        focusNode.requestFocus();
      },
      child: KeyboardListener(
        key: LabeledGlobalKey(widget.index.toString()),
        focusNode: focusNode,
        autofocus: true,
        child: Row(
          children: [
            if (widget.labelPlacement == LabelPlacement.start) ...[
              widget.label,
              Space(space: 4, orientation: Axis.horizontal),
            ],
            SizedBox(
              key: LabeledGlobalKey('${widget.index}'),
              height: 20,
              width: 4,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colors.contentPrimary,
                ),
              ),
            ),
            if (widget.labelPlacement == LabelPlacement.end) ...[
              Space(space: 4, orientation: Axis.horizontal),
              widget.label,
            ],
          ],
        ),
      ),
    );
  }
}
