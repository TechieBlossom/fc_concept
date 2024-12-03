import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_dashboard/src/index/bloc/index_bloc.dart';
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
        appBar: PageTitle(
          autoImplyLeading: true,
          title: params.indexType.title,
        ),
        body: SafeArea(
          child: BlocBuilder<IndexBloc, IndexState>(
            builder: (context, state) {
              return AppAnimatedOpacity(
                isShown: state.processState == ProcessState.success,
                secondChild: const ShimmerListItem(),
                child: state.values == null
                    ? const SizedBox.shrink()
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.space3,
                          vertical: AppSpacing.space5,
                        ),
                        child: AspectRatio(
                          aspectRatio: 1.3,
                          child: AppLineChart(
                            minY: state.min,
                            maxY: state.max,
                            interval: state.interval,
                            offsets: [
                              for (var i = 0; i < state.values!.length; i++)
                                Offset(
                                  i.toDouble(),
                                  state.values![i],
                                ),
                            ],
                          ),
                        ),
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}
