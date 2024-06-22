import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/nested_filter/bloc/nested_filter_bloc.dart';
import 'package:feature_filter/src/nested_filter/clubs_layout.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_layout.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utility_di/di.dart';

class NestedFilterPageParams {
  NestedFilterPageParams({
    required this.nestedFilterType,
    this.clubs,
    this.items,
  });

  final NestedFilterType nestedFilterType;
  final List<NestedFilterLayoutType>? items;
  final List<Club>? clubs;
}

class NestedFilterPage extends StatelessWidget {
  const NestedFilterPage({
    super.key,
    required this.nestedFilterPageParams,
  });

  final NestedFilterPageParams nestedFilterPageParams;

  String get pageTitle => switch (nestedFilterPageParams.nestedFilterType) {
        NestedFilterType.league => 'Select League(s)',
        NestedFilterType.club => 'Select Club(s)',
        NestedFilterType.nation => 'Select Nation(s)',
        NestedFilterType.rarity => 'Select Rarity(ies)',
      };

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NestedFilterBloc>(
      create: (_) => di<NestedFilterBloc>(param: nestedFilterPageParams),
      child: BlocBuilder<NestedFilterBloc, NestedFilterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: PageTitle(
              title: pageTitle,
              onBack: () => context
                  .read<NestedFilterBloc>()
                  .add(const NestedFilterEvent.back()),
            ),
            body: switch (state.processState) {
              ProcessState.success => Stack(
                  fit: StackFit.expand,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: spacingM.value),
                          if (nestedFilterPageParams.nestedFilterType ==
                              NestedFilterType.league)
                            NestedFilterLayout(
                              topItems: state.topLeagues,
                              otherItems: state.otherLeagues,
                              selectedItems: state.selectedItems ??
                                  nestedFilterPageParams.items,
                            ),
                          if (nestedFilterPageParams.nestedFilterType ==
                              NestedFilterType.club)
                            ClubsLayout(
                              leagues: nestedFilterPageParams.items,
                              clubsMap: state.clubs,
                              selectedClubs: state.selectedClubs ??
                                  nestedFilterPageParams.clubs,
                            ),
                          if (nestedFilterPageParams.nestedFilterType ==
                              NestedFilterType.nation)
                            NestedFilterLayout(
                              topItems: state.topNations,
                              otherItems: state.otherNations,
                              selectedItems: state.selectedItems ??
                                  nestedFilterPageParams.items,
                            ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        padding: spacingXL.all + spacingXL.right,
                        color: Theme.of(context).colorScheme.surfaceContainerHighest,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SecondaryButton(
                              text: 'Clear',
                              onPressed: () {},
                            ),
                            PrimaryButton(
                              text: 'Done',
                              onPressed: () =>
                                  context.read<NestedFilterBloc>().add(
                                        const NestedFilterEvent.done(),
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ProcessState.loading => const LoadingList(
                  loadingListType: LoadingListType.filterGroup,
                  count: 2,
                ),
              _ => const SizedBox.shrink(),
            },
          );
        },
      ),
    );
  }
}
