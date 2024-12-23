import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_dashboard/src/index/bloc/index_bloc.dart';
import 'package:feature_dashboard/src/index/widgets/index_chart.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

class IndexPageParams {
  const IndexPageParams({
    required this.indexType,
  });

  final IndexType indexType;
}

class IndexPage extends StatelessWidget {
  const IndexPage({super.key, required this.params});

  final IndexPageParams params;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IndexBloc>(
      create: (_) => di<IndexBloc>(param1: params.indexType),
      child: Scaffold(
        appBar: const PageTitle(
          autoImplyLeading: true,
          title: 'Index chart over 30 days',
        ),
        body: SafeArea(
          child: BlocBuilder<IndexBloc, IndexState>(
            builder: (context, state) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.space3,
                      vertical: AppSpacing.space5,
                    ),
                    child: AppAnimatedCrossFade(
                      isShown: state.processState == ProcessState.success,
                      secondChild: const ShimmerListItem(
                        margin: EdgeInsets.zero,
                      ),
                      child: state.entries == null
                          ? const SizedBox.shrink()
                          : Row(
                              children: [
                                IndexBox(
                                  type: params.indexType,
                                  current: state.hoveredIndexData ??
                                      state.current ??
                                      0,
                                  previous: state.previous ?? 0,
                                ),
                                const Spacer(),
                              ],
                            ),
                    ),
                  ),
                  AppAnimatedCrossFade(
                    isShown: state.processState == ProcessState.success,
                    secondChild: const ShimmerChartItem(
                      margin: EdgeInsets.symmetric(
                        horizontal: AppSpacing.space3,
                        vertical: AppSpacing.space5,
                      ),
                    ),
                    child: state.entries == null
                        ? const SizedBox.shrink()
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.space3,
                              vertical: AppSpacing.space5,
                            ),
                            child: AspectRatio(
                              aspectRatio: 1.3,
                              child: IndexChart(
                                minY: state.min,
                                maxY: state.max,
                                interval: state.interval,
                                entries: state.entries ?? [],
                                indexType: params.indexType,
                              ),
                            ),
                          ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
