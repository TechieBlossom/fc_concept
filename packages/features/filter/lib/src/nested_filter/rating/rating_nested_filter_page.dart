import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/nested_filter/rating/bloc/rating_nested_filter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utility_di/di.dart';

const String pageTitle = 'Select Rating(s)';

class RatingNestedFilterPageParams {
  RatingNestedFilterPageParams({
    this.items,
  });

  final List<int>? items;
}

class RatingNestedFilterPage extends StatelessWidget {
  const RatingNestedFilterPage({
    super.key,
    required this.ratingNestedFilterPageParams,
  });

  final RatingNestedFilterPageParams ratingNestedFilterPageParams;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RatingNestedFilterBloc>(
      create: (_) =>
          di<RatingNestedFilterBloc>(param: ratingNestedFilterPageParams),
      child: BlocBuilder<RatingNestedFilterBloc, RatingNestedFilterState>(
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
                  onPressed: () => context.read<RatingNestedFilterBloc>().add(
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
                        padding: spacingXXXL.bottom + spacingXXXL.bottom,
                        child: FilterGroup(
                          pillItems: state.ratings!
                              .map(
                                (item) => PillItem<int>(
                                  data: item,
                                  text: item.toString(),
                                  hasDigit: true,
                                  isSelected: (state.selectedRatings ??
                                              ratingNestedFilterPageParams
                                                  .items)
                                          ?.contains(item) ??
                                      false,
                                  onTap: () => context
                                      .read<RatingNestedFilterBloc>()
                                      .add(
                                        SelectRating(
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
