import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/nested_filter/rarity/bloc/rarity_nested_filter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utility_di/di.dart';

const String pageTitle = 'Select Rarity(ies)';

class RarityNestedFilterPageParams {
  RarityNestedFilterPageParams({
    this.items,
  });

  final List<Rarity>? items;
}

class RarityNestedFilterPage extends StatelessWidget {
  const RarityNestedFilterPage({
    super.key,
    required this.rarityNestedFilterPageParams,
  });

  final RarityNestedFilterPageParams rarityNestedFilterPageParams;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RarityNestedFilterBloc>(
      create: (_) =>
          di<RarityNestedFilterBloc>(param: rarityNestedFilterPageParams),
      child: BlocBuilder<RarityNestedFilterBloc, RarityNestedFilterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const PageTitle(title: pageTitle),
            body: switch (state.processState) {
              ProcessState.success => Stack(
                  fit: StackFit.expand,
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: spacingXXXL.bottom + spacingXXXL.bottom,
                        child: FilterGroup(
                          pillItems: state.rarities!
                              .map(
                                (item) => PillItem<Rarity>(
                                  data: item,
                                  text: item.name,
                                  isSelected: (state.selectedRarities ??
                                              rarityNestedFilterPageParams
                                                  .items)
                                          ?.contains(item) ??
                                      false,
                                  onTap: () => context
                                      .read<RarityNestedFilterBloc>()
                                      .add(
                                        RarityNestedFilterEvent.selectRarity(
                                          item: item,
                                        ),
                                      ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        padding: spacingXL.all + spacingXL.right,
                        color: Theme.of(context)
                            .colorScheme
                            .surfaceContainerHighest,
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
                                  context.read<RarityNestedFilterBloc>().add(
                                        const RarityNestedFilterEvent.done(),
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
                  count: 1,
                ),
              _ => const SizedBox.shrink(),
            },
          );
        },
      ),
    );
  }
}
