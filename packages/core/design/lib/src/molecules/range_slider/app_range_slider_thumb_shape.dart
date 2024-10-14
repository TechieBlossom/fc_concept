import 'dart:ui' as ui;

import 'package:core_design/src/atoms/app_typography.dart';
import 'package:core_design/src/utility/x_int.dart';
import 'package:flutter/material.dart';

class AppRangeSliderThumbShape extends RangeSliderThumbShape {
  /// Create a slider thumb that draws a circle.
  const AppRangeSliderThumbShape({
    this.enabledThumbRadius = 10.0,
    this.disabledThumbRadius,
    this.elevation = 1.0,
    this.pressedElevation = 6.0,
    required this.rangeValues,
    required this.buildContext,
  });

  final BuildContext buildContext;
  final RangeValues rangeValues;

  /// The preferred radius of the round thumb shape when the slider is enabled.
  ///
  /// If it is not provided, then the Material Design default of 10 is used.
  final double enabledThumbRadius;

  /// The preferred radius of the round thumb shape when the slider is disabled.
  ///
  /// If no disabledRadius is provided, then it is equal to the
  /// [enabledThumbRadius].
  final double? disabledThumbRadius;

  double get _disabledThumbRadius => disabledThumbRadius ?? enabledThumbRadius;

  /// The resting elevation adds shadow to the unpressed thumb.
  ///
  /// The default is 1.
  final double elevation;

  /// The pressed elevation adds shadow to the pressed thumb.
  ///
  /// The default is 6.
  final double pressedElevation;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(
        isEnabled ? enabledThumbRadius : _disabledThumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    bool? isOnTop,
    required SliderThemeData sliderTheme,
    TextDirection? textDirection,
    Thumb? thumb,
    bool? isPressed,
  }) {
    assert(sliderTheme.showValueIndicator != null);
    assert(sliderTheme.overlappingShapeStrokeColor != null);
    final Canvas canvas = context.canvas;
    final Tween<double> radiusTween = Tween<double>(
      begin: _disabledThumbRadius,
      end: enabledThumbRadius,
    );
    final ColorTween colorTween = ColorTween(
      begin: sliderTheme.disabledThumbColor,
      end: sliderTheme.thumbColor,
    );
    final double radius = radiusTween.evaluate(enableAnimation);

    /// Pad is to align the thumb with the track.
    var pad = 10;

    /// If the thumb is on top, then the pad should be neutralised.
    if (isOnTop ?? false) {
      pad = -10;
    }

    if (thumb?.index == 0) {
      final startRating = rangeValues.start.round();
      canvas.drawPath(
        ui.Path()
          ..addPolygon(<Offset>[
            Offset(pad + center.dx - radius, center.dy - radius - 4),
            Offset(pad + center.dx - radius + 15, center.dy - radius - 4),
            Offset(pad + center.dx + radius + 5, center.dy / 2 + radius + 2),
            Offset(pad + center.dx - radius + 15, center.dy + radius + 4),
            Offset(pad + center.dx - radius, center.dy + radius + 4),
          ], true),
        Paint()..color = startRating.color,
      );
    } else {
      final endRating = rangeValues.end.round();
      canvas.drawPath(
        ui.Path()
          ..addPolygon(<Offset>[
            Offset(center.dx - pad + radius, center.dy - radius - 4),
            Offset(center.dx - pad + radius - 15, center.dy - radius - 4),
            Offset(center.dx - pad - radius - 5, center.dy / 2 + radius + 2),
            Offset(center.dx - pad + radius - 15, center.dy + radius + 4),
            Offset(center.dx - pad + radius, center.dy + radius + 4),
          ], true),
        Paint()..color = endRating.color,
      );
    }

    final textStyle = buildContext.typography.body2;

    if (thumb?.index == 0) {
      final startRating = rangeValues.start.round();
      TextPainter painter = TextPainter(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: startRating.toString(),
          style: textStyle.copyWith(
            color: startRating.lightColor,
          ),
        ),
      );

      painter.layout();
      painter.paint(
        canvas,
        Offset(
          pad + center.dx - painter.width / 2,
          center.dy - painter.height / 2,
        ),
      );
    } else {
      final endRating = rangeValues.end.round();
      TextPainter painter = TextPainter(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: endRating.toString(),
          style: textStyle.copyWith(
            color: endRating.lightColor,
          ),
        ),
      );

      painter.layout();
      painter.paint(
        canvas,
        Offset(
          center.dx - pad - painter.width / 2,
          center.dy - painter.height / 2,
        ),
      );
    }
  }
}
