import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class AppRangeSliderTrackShape extends RangeSliderTrackShape
    with BaseRangeSliderTrackShape {
  /// Create a slider track with rectangular outer edges.
  ///
  /// The middle track segment is the selected range and is active, and the two
  /// outer track segments are inactive.
  const AppRangeSliderTrackShape();

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double>? enableAnimation,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool isEnabled = false,
    bool isDiscrete = false,
    required TextDirection textDirection,
  }) {
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.rangeThumbShape != null);
    assert(enableAnimation != null);

    final (Offset leftThumbOffset, Offset rightThumbOffset) =
        switch (textDirection) {
      TextDirection.ltr => (startThumbCenter, endThumbCenter),
      TextDirection.rtl => (endThumbCenter, startThumbCenter),
    };

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final Paint activePaint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(trackRect.left, 0),
        Offset(trackRect.right, 0),
        <Color>[
          rating1.withOpacity(0.6),
          rating2.withOpacity(0.6),
          rating3.withOpacity(0.6),
          rating4.withOpacity(0.6),
        ],
        <double>[
          0.0,
          0.33,
          0.66,
          1.0,
        ],
      );

    final Paint inactivePaint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(trackRect.left, 0),
        Offset(trackRect.right, 0),
        <Color>[
          lightRating1,
          lightRating2,
          lightRating3,
          lightRating4,
        ],
        <double>[
          0.0,
          0.33,
          0.66,
          1.0,
        ],
      );

    context.canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          trackRect.left,
          trackRect.top,
          trackRect.width,
          trackRect.height,
        ),
        Radius.circular(trackRect.height / 2),
      ),
      activePaint,
    );

    List.generate(49, (index) {
      context.canvas.drawLine(
        Offset(index * 10, trackRect.top),
        Offset(index * 10, trackRect.bottom),
        Paint()
          ..strokeWidth = 5
          ..color = Colors.white,
      );
    });

    final Rect leftTrackSegment = Rect.fromLTRB(
        trackRect.left, trackRect.top, leftThumbOffset.dx, trackRect.bottom);
    if (!leftTrackSegment.isEmpty) {
      context.canvas.drawRRect(
        RRect.fromRectAndCorners(
          leftTrackSegment,
          topLeft: Radius.circular(trackRect.height / 2),
          bottomLeft: Radius.circular(trackRect.height / 2),
          // Radius.circular(trackRect.height / 2),
        ),
        inactivePaint,
      );
    }
    final Rect middleTrackSegment = Rect.fromLTRB(leftThumbOffset.dx,
        trackRect.top, rightThumbOffset.dx, trackRect.bottom);
    if (!middleTrackSegment.isEmpty) {
      context.canvas.drawRRect(
          RRect.fromRectAndRadius(
            middleTrackSegment,
            Radius.circular(trackRect.height / 2),
          ),
          Paint()..color = Colors.transparent);
    }
    final Rect rightTrackSegment = Rect.fromLTRB(
        rightThumbOffset.dx, trackRect.top, trackRect.right, trackRect.bottom);
    if (!rightTrackSegment.isEmpty) {
      context.canvas.drawRRect(
        RRect.fromRectAndCorners(
          rightTrackSegment,
          topRight: Radius.circular(trackRect.height / 2),
          bottomRight: Radius.circular(trackRect.height / 2),
          // Radius.circular(trackRect.height / 2),
        ),
        inactivePaint,
      );
    }
  }
}
