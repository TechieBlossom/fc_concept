part of 'play_style_nested_filter_bloc.dart';

@MappableClass()
class PlayStyleNestedFilterState with PlayStyleNestedFilterStateMappable {
  PlayStyleNestedFilterState({
    this.processState = ProcessState.success,
    this.playStyleNestedFilterPageParams,
    this.playStyles,
    this.selectedPlayStyles,
  });

  final ProcessState processState;
  final PlayStyleNestedFilterPageParams? playStyleNestedFilterPageParams;
  final List<PlayStyle>? playStyles;
  final List<PlayStyle>? selectedPlayStyles;

  Map<PlayStyleCategory, List<PlayStyle>> get playStylesByCategory =>
      groupBy<PlayStyle, PlayStyleCategory>(
        playStyles?.sorted((a, b) => a.categoryId.index - b.categoryId.index) ?? [],
            (playStyle) => playStyle.categoryId,
      );
}
