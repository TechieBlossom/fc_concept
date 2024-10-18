import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/nested_filter/play_style/bloc/play_style_nested_filter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';

const String pageTitle = 'Select PlayStyle(s)';

class PlayStyleNestedFilterPageParams {
  PlayStyleNestedFilterPageParams({
    this.items,
  });

  final List<PlayStyle>? items;
}

class PlayStyleNestedFilterPage extends StatelessWidget {
  const PlayStyleNestedFilterPage({
    super.key,
    required this.playStyleNestedFilterPageParams,
  });

  final PlayStyleNestedFilterPageParams playStyleNestedFilterPageParams;

  @override
  Widget build(BuildContext context) {
    final allPlayStyles = context.read<MetadataBloc>().state.playStyles;
    return BlocProvider<PlayStyleNestedFilterBloc>(
      create: (_) => di<PlayStyleNestedFilterBloc>(
        param1: playStyleNestedFilterPageParams,
        param2: allPlayStyles,
      ),
      child: BlocBuilder<PlayStyleNestedFilterBloc, PlayStyleNestedFilterState>(
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
                  onPressed: () =>
                      context.read<PlayStyleNestedFilterBloc>().add(
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
                          pillItems: state.playStyles!
                              .map(
                                (item) => PillItem<PlayStyle>(
                                  data: item,
                                  text: item.name,
                                  isSelected: (state.selectedPlayStyles ??
                                              playStyleNestedFilterPageParams
                                                  .items)
                                          ?.contains(item) ??
                                      false,
                                  onTap: () => context
                                      .read<PlayStyleNestedFilterBloc>()
                                      .add(
                                        SelectPlayStyle(
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
