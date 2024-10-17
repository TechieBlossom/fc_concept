import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_dashboard/src/dashboard/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (_) => di<DashboardBloc>(),
      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          return Scaffold(
            appBar: SearchContainer(
              margin: const EdgeInsets.only(
                top: AppSpacing.space7 + AppSpacing.space3,
              ),
              onTap: () {},
            ),
            body: (state.indexes?.isEmpty ?? true)
                ? const SizedBox.shrink()
                : Column(
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
                          'INDEXES',
                          style: context.typography.body2.copyWith(
                            color: context.colors.contentTertiary,
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
                                current: state.indexes![0].forwards,
                                previous: state.indexes![1].forwards,
                              ),
                              IndexBox(
                                type: IndexType.midfielders,
                                current: state.indexes![0].midfielders,
                                previous: state.indexes![1].midfielders,
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
                                current: state.indexes![0].defenders,
                                previous: state.indexes![1].defenders,
                              ),
                              IndexBox(
                                type: IndexType.goalkeepers,
                                current: state.indexes![0].goalkeepers,
                                previous: state.indexes![1].goalkeepers,
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
                        )
                      ]
                          .intersperse(
                            const Space(space: AppSpacing.space4),
                          )
                          .toList(),
                    ],
                  ),
          );
        },
      ),
    );
  }
}
