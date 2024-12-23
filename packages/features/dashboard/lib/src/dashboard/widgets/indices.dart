import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_dashboard/src/dashboard/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';

class Indices extends StatelessWidget {
  const Indices({
    super.key,
    required this.state,
  });

  final DashboardState state;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      crossFadeState: state.processState == ProcessState.loading
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      firstChild: const _LoadingState(),
      secondChild: _IndicesContent(state: state),
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Space(space: AppSpacing.space5),
        ShimmerFilterGroup(
          margin: EdgeInsets.symmetric(horizontal: AppSpacing.space5),
        ),
        ShimmerListItem(
          margin: EdgeInsets.symmetric(horizontal: AppSpacing.space5),
        ),
      ],
    );
  }
}

class _IndicesContent extends StatelessWidget {
  const _IndicesContent({
    required this.state,
  });

  final DashboardState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: AppSpacing.space5,
            right: AppSpacing.space5,
            top: AppSpacing.space5,
            bottom: AppSpacing.space3,
          ),
          child: Text(
            'Indexes',
            textAlign: TextAlign.center,
            style: context.typography.headline.copyWith(
              color: context.colors.contentPrimary,
            ),
          ),
        ),
        ...<Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.space5,
            ),
            child: Row(
              children: <Widget>[
                IndexBox(
                  type: IndexType.forwards,
                  current: state.indexes?[0].forwards ?? 0,
                  previous: state.indexes?[1].forwards ?? 0,
                  onTap: () => context.read<DashboardBloc>().add(
                        IndexTap(indexType: IndexType.forwards),
                      ),
                ),
                IndexBox(
                  type: IndexType.midfielders,
                  current: state.indexes?[0].midfielders ?? 0,
                  previous: state.indexes?[1].midfielders ?? 0,
                  onTap: () => context.read<DashboardBloc>().add(
                        IndexTap(indexType: IndexType.midfielders),
                      ),
                ),
              ]
                  .intersperse(
                    const Space(
                      space: AppSpacing.space4,
                      orientation: Axis.horizontal,
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.space5,
            ),
            child: Row(
              children: <Widget>[
                IndexBox(
                  type: IndexType.defenders,
                  current: state.indexes?[0].defenders ?? 0,
                  previous: state.indexes?[1].defenders ?? 0,
                  onTap: () => context.read<DashboardBloc>().add(
                        IndexTap(indexType: IndexType.defenders),
                      ),
                ),
                IndexBox(
                  type: IndexType.goalkeepers,
                  current: state.indexes?[0].goalkeepers ?? 0,
                  previous: state.indexes?[1].goalkeepers ?? 0,
                  onTap: () => context.read<DashboardBloc>().add(
                        IndexTap(indexType: IndexType.goalkeepers),
                      ),
                ),
              ]
                  .intersperse(
                    const Space(
                      space: AppSpacing.space4,
                      orientation: Axis.horizontal,
                    ),
                  )
                  .toList(),
            ),
          ),
        ].intersperse(const Space(space: AppSpacing.space4)).toList(),
      ],
    );
  }
}
