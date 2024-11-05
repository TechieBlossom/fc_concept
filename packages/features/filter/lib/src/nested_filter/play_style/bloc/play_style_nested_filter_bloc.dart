import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_filter/src/navigation/navigator.dart';
import 'package:feature_filter/src/nested_filter/play_style/play_style_nested_filter_page.dart';
import 'package:injectable/injectable.dart';

part 'play_style_nested_filter_bloc.mapper.dart';

part 'play_style_nested_filter_event.dart';

part 'play_style_nested_filter_state.dart';

@injectable
class PlayStyleNestedFilterBloc
    extends Bloc<PlayStyleNestedFilterEvent, PlayStyleNestedFilterState> {
  PlayStyleNestedFilterBloc(
    @factoryParam
    PlayStyleNestedFilterPageParams playStyleNestedFilterPageParams,
    @factoryParam List<PlayStyle> allPlayStyles,
    this._navigator,
  ) : super(
          PlayStyleNestedFilterState(
            playStyleNestedFilterPageParams: playStyleNestedFilterPageParams,
            playStyles: allPlayStyles,
          ),
        ) {
    on<SelectPlayStyle>((event, emit) => _selectItem(event.item, emit));
    on<Clear>((event, emit) => _clear(emit));
    on<Done>((event, emit) => _done());
  }

  final FilterNavigator _navigator;

  void _selectItem(PlayStyle item, Emitter<PlayStyleNestedFilterState> emit) {
    final selectedPlayStyles = List<PlayStyle>.from(
      state.selectedPlayStyles ??
          state.playStyleNestedFilterPageParams?.items ??
          [],
    ).toList();
    if (selectedPlayStyles.contains(item)) {
      emit(
        state.copyWith(selectedPlayStyles: selectedPlayStyles..remove(item)),
      );
    } else {
      emit(state.copyWith(selectedPlayStyles: selectedPlayStyles..add(item)));
    }
  }

  void _clear(Emitter<PlayStyleNestedFilterState> emit) {
    emit(state.copyWith(selectedPlayStyles: []));
  }

  void _done() {
    _navigator.closeAny<List<PlayStyle>?>(state.selectedPlayStyles);
  }
}
