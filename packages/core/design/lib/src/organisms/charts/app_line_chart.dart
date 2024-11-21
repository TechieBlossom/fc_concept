import 'dart:math';

import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/utility/app_formatters.dart';
import 'package:core_domain/src/domain/charts/model/trend_type.dart';
import 'package:core_design/src/utility/x_int.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:utility_extensions/extensions.dart';

class AppLineChart extends StatelessWidget {
  const AppLineChart({
    super.key,
    required this.offsets,
    this.minY,
    this.maxY,
    this.interval,
  });

  final List<Offset> offsets;
  final double? minY;
  final double? maxY;
  final double? interval;

  TrendType get trendType {
    if (offsets.last.dy - offsets.first.dy > 20) {
      return TrendType.up;
    } else if (offsets.last.dy - offsets.first.dy < 20) {
      return TrendType.down;
    } else {
      return TrendType.flat;
    }
  }

  List<Color> get gradient => switch (trendType) {
        TrendType.up => [
            85.color.withOpacity(0.1),
            75.color.withOpacity(0.5),
          ],
        TrendType.down => [
            65.color.withOpacity(0.1),
            55.color.withOpacity(0.5),
          ],
        _ => [
            Colors.white.withOpacity(0.1),
            Colors.white.withOpacity(0.3),
          ],
      };

  Color get color => switch (trendType) {
        TrendType.up => 85.color,
        TrendType.down => 65.color,
        _ => Colors.white.withOpacity(0.5),
      };

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        borderData: FlBorderData(
          show: false,
          border: Border.all(
            color: context.colors.backgroundTertiary,
          ),
        ),
        // Find Max Y by reading Y values and find max of that
        minY: minY,
        maxY: maxY,
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: interval,
              reservedSize: 40,
              getTitlesWidget: (value, metaData) {
                if (value == metaData.min || value == metaData.max) {
                  return const SizedBox.shrink();
                }
                return SideTitleWidget(
                  axisSide: AxisSide.left,
                  fitInside: SideTitleFitInsideData.fromTitleMeta(
                      metaData,
                      enabled: true,
                  ),
                  space: AppSpacing.space4,
                  child: Text(
                    AppFormatter.formatCurrencyShortForm(value),
                    textAlign: TextAlign.end,
                    style: context.typography.body5.copyWith(
                      color: context.colors.contentSecondary,
                    ),
                  ),
                );
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, metaData) {
                return SideTitleWidget(
                  axisSide: AxisSide.bottom,
                  fitInside: SideTitleFitInsideData.fromTitleMeta(
                    metaData,
                    enabled: true,
                    distanceFromEdge: 2
                  ),
                  space: AppSpacing.space3,
                  child: Text(
                    value.toInt().toString(),
                    textAlign: TextAlign.end,
                    style: context.typography.body5.copyWith(
                      color: context.colors.contentSecondary,
                    ),
                  ),
                );
              },
            ),
          ),
          rightTitles: const AxisTitles(),
          topTitles: const AxisTitles(),
        ),
        gridData: FlGridData(
          show: true,
          horizontalInterval: interval,
          getDrawingHorizontalLine: (value) => FlLine(
            color: context.colors.backgroundTertiary,
            strokeWidth: 0.5,
          ),
          getDrawingVerticalLine: (value) => FlLine(
            color: context.colors.backgroundTertiary,
            strokeWidth: 0.5,
          ),
        ),
        lineTouchData: LineTouchData(
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (barData) => context.colors.backgroundTertiary,
            getTooltipItems: (touchedSpots) => touchedSpots
                .map(
                  (touchedSpot) => LineTooltipItem(
                    touchedSpot.y.toInt().toString(),
                    context.typography.body5.copyWith(
                      color: context.colors.contentPrimary,
                    ),
                  ),
                )
                .toList(),
          ),
          getTouchedSpotIndicator: (barData, spotIndexes) => spotIndexes
              .map(
                (spotIndex) => TouchedSpotIndicatorData(
                  FlLine(
                    color: context.colors.primary,
                    strokeWidth: 0.5,
                  ),
                  FlDotData(
                    getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
                      radius: 4,
                      color: context.colors.onPrimary,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        lineBarsData: [
          LineChartBarData(
            isStrokeCapRound: true,
            belowBarData: BarAreaData(
              show: true,
              applyCutOffY: true,
              // color: context.appColors().positive,
              gradient: LinearGradient(
                colors: gradient,
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            dotData: FlDotData(
              getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
                radius: 2,
                color: context.colors.onPrimary,
              ),
            ),
            color: color,
            spots: offsets
                .map(
                  (offset) => FlSpot(
                    offset.dx,
                    offset.dy,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
