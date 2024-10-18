import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/nested_filter/rarity/bloc/rarity_nested_filter_bloc.dart';
import 'package:flutter/material.dart';
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
          di<RarityNestedFilterBloc>(param1: rarityNestedFilterPageParams),
      child: BlocBuilder<RarityNestedFilterBloc, RarityNestedFilterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const PageTitle(title: pageTitle),
            bottomNavigationBar: BottomButtonLayout(
              isLoading: state.processState == ProcessState.loading,
              buttons: [
                SecondaryButton(
                  text: 'Clear',
                  onPressed: () {},
                ),
                PrimaryButton(
                  text: 'Done',
                  onPressed: () => context.read<RarityNestedFilterBloc>().add(
                        Done(),
                      ),
                ),
              ],
            ),
            body: switch (state.processState) {
              ProcessState.success => Stack(
                  fit: StackFit.expand,
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: AppSpacing.space8,
                        ),
                        child: FilterGroup(
                          pillItems: state.rarities!
                              .map(
                                (item) => PillItem<Rarity>(
                                  data: item,
                                  text: item.name,
                                  image: RarityImage(rarity: item),
                                  isSelected: (state.selectedRarities ??
                                              rarityNestedFilterPageParams
                                                  .items)
                                          ?.contains(item) ??
                                      false,
                                  onTap: () => context
                                      .read<RarityNestedFilterBloc>()
                                      .add(
                                        SelectRarity(
                                          item: item,
                                        ),
                                      ),
                                ),
                              )
                              .toList(),
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
