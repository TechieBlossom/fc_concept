import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_design/src/molecules/range_slider/app_none_range_slider_value_indicator_shape.dart';
import 'package:core_design/src/molecules/range_slider/app_range_slider_thumb_shape.dart';
import 'package:core_design/src/molecules/range_slider/app_range_slider_track_shape.dart';
import 'package:flutter/material.dart';

class AppRangeSlider extends StatefulWidget {
  const AppRangeSlider({
    super.key,
    required this.min,
    required this.max,
    required this.initialRange,
    required this.onChanged,
  });

  final int  min;
  final int max;
  final RangeValues initialRange;
  final void Function(RangeValues) onChanged;

  @override
  State<AppRangeSlider> createState() => _AppRangeSliderState();
}

class _AppRangeSliderState extends State<AppRangeSlider> {
  late RangeValues range;

  @override
  void initState() {
    range = widget.initialRange;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          trackHeight: 20.0,
          rangeTrackShape: const AppRangeSliderTrackShape(),
          rangeThumbShape: AppRangeSliderThumbShape(
            buildContext: context,
            rangeValues: range,
            enabledThumbRadius: 10.0,
          ),
          thumbColor: context.colors.contentPrimary,
          overlappingShapeStrokeColor: context.colors.backgroundPrimary,
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 0.0),
          rangeValueIndicatorShape:
              const AppNoneRangeSliderValueIndicatorShape(),
        ),
        child: RangeSlider(
          min: widget.min.toDouble(),
          max: widget.max.toDouble(),
          values: range,
          labels: RangeLabels(
            range.start.round().toString(),
            range.end.round().toString(),
          ),
          divisions: 50,
          onChanged: (rangeValue) {
            setState(() {
              range = rangeValue;
              widget.onChanged(range);
            });
          },
        ),
      ),
    );
  }
}
