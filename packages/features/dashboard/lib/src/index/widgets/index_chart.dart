import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/molecules.dart';
import 'package:core_design/src/utility/app_formatters.dart';
import 'package:core_design/src/utility/x_int.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_dashboard/src/index/bloc/index_bloc.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IndexChart extends StatelessWidget {
  const IndexChart({
    super.key,
    required this.entries,
    required this.indexType,
    this.minY,
    this.maxY,
    this.interval,
  });

  final List<IndexData> entries;
  final IndexType indexType;
  final double? minY;
  final double? maxY;
  final double? interval;

  TrendType get trendType {
    final difference = switch (indexType) {
      IndexType.forwards => (entries.first.forwards - entries.last.forwards) /
          entries.first.forwards,
      IndexType.defenders =>
        (entries.first.defenders - entries.last.defenders) /
            entries.first.defenders,
      IndexType.midfielders =>
        (entries.first.midfielders - entries.last.midfielders) /
            entries.first.midfielders,
      IndexType.goalkeepers =>
        (entries.first.goalkeepers - entries.last.goalkeepers) /
            entries.first.goalkeepers,
    };
    if (difference >= .00) {
      return TrendType.up;
    } else if (difference < .00) {
      return TrendType.down;
    } else {
      return TrendType.flat;
    }
  }

  List<Color> get gradient => switch (trendType) {
        TrendType.up => [
            Colors.transparent,
            75.color.withOpacity(0.4),
          ],
        TrendType.down => [
            Colors.transparent,
            55.color.withOpacity(0.4),
          ],
        _ => [
            Colors.white.withOpacity(0.1),
            Colors.white.withOpacity(0.3),
          ],
      };

  Color get color => switch (trendType) {
        TrendType.up => 75.color,
        TrendType.down => 55.color,
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
                if (value == metaData.max || value == metaData.min) {
                  return SideTitleWidget(
                    axisSide: AxisSide.bottom,
                    fitInside: SideTitleFitInsideData.fromTitleMeta(
                      metaData,
                      enabled: true,
                      distanceFromEdge: 2,
                    ),
                    space: AppSpacing.space3,
                    child: Text(
                      AppFormatter.formatDate(
                          DateTime.fromMillisecondsSinceEpoch(value.toInt())),
                      textAlign: TextAlign.center,
                      style: context.typography.body5.copyWith(
                        color: context.colors.contentSecondary,
                      ),
                    ),
                  );
                }
                return const SizedBox.shrink();
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
          handleBuiltInTouches: true,
          touchCallback: (event, touchResponse) {
            if (touchResponse?.lineBarSpots == null) {
              context.read<IndexBloc>().add(
                    ChartHovered(
                      indexType: indexType,
                      indexData: null,
                    ),
                  );
            } else {
              context.read<IndexBloc>().add(
                    ChartHovered(
                      indexType: indexType,
                      indexData:
                          entries[touchResponse!.lineBarSpots!.first.spotIndex],
                    ),
                  );
            }
          },
          touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (barData) => Colors.transparent,
            fitInsideHorizontally: true,
            fitInsideVertically: true,
            getTooltipItems: (touchedSpots) => touchedSpots
                .map(
                  (touchedSpot) => LineTooltipItem(
                    '',
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
                    color: context.colors.contentSecondary,
                    strokeWidth: 0.5,
                    dashArray: [5],
                  ),
                  FlDotData(
                    getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
                      radius: 3,
                      color: color,
                      strokeWidth: 2,
                      strokeColor: context.colors.contentPrimary,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        lineBarsData: [
          LineChartBarData(
            shadow: Shadow(
              color: color,
              offset: Offset(0, 1),
              blurRadius: 1,
            ),
            isCurved: true,
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
              show: false,
              getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
                radius: 1,
                color: context.colors.onPrimary,
              ),
            ),
            color: color,
            spots: entries
                .map(
                  (indexData) => FlSpot(
                    indexData.dateTime.millisecondsSinceEpoch.toDouble(),
                    switch (indexType) {
                      IndexType.forwards => indexData.forwards,
                      IndexType.defenders => indexData.defenders,
                      IndexType.midfielders => indexData.midfielders,
                      IndexType.goalkeepers => indexData.goalkeepers,
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
