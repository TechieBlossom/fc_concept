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
                  onPressed: () =>
                      context.read<PlayStyleNestedFilterBloc>().add(
                            Clear(),
                          ),
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
              ProcessState.success => _Success(
                  state: state,
                  playStyleNestedFilterPageParams:
                      playStyleNestedFilterPageParams,
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

class _Success extends StatelessWidget {
  const _Success({
    required this.state,
    required this.playStyleNestedFilterPageParams,
  });

  final PlayStyleNestedFilterState state;
  final PlayStyleNestedFilterPageParams playStyleNestedFilterPageParams;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.space5,
              right: AppSpacing.space5,
              bottom: AppSpacing.space9,
            ),
            child: Column(
              children: state.playStylesByCategory.entries
                  .map<Widget>(
                    (entry) {
                      return PlayStyleFilterCategoryGroup(
                        playStyles: entry.value,
                        onPlayStyleTap: (playStyle) => context
                            .read<PlayStyleNestedFilterBloc>()
                            .add(SelectPlayStyle(item: playStyle)),
                        selectedPlayStyles: state.selectedPlayStyles ??
                            playStyleNestedFilterPageParams.items,
                      );
                    },
                  )
                  .intersperse(
                    const Space(space: AppSpacing.space5),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
