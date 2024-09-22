import 'package:collection/collection.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_filter/src/navigation/navigator.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_page.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_type.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'nested_filter_bloc.mapper.dart';
part 'nested_filter_event.dart';
part 'nested_filter_state.dart';

@injectable
class NestedFilterBloc extends Bloc<NestedFilterEvent, NestedFilterState> {
  NestedFilterBloc(
    @factoryParam NestedFilterPageParams nestedFilterPageParams,
    this._getTopLeaguesUseCase,
    this._getOtherLeaguesUseCase,
    this._getClubsByLeagueUseCase,
    this._getTopNationsUseCase,
    this._getOtherNationsUseCase,
    this._navigator,
  ) : super(NestedFilterState(nestedFilterPageParams: nestedFilterPageParams)) {
    on<Init>((event, emit) => _initial(emit));
    on<SelectClub>((event, emit) => _selectClub(event.club, emit));
    on<SelectItem>((event, emit) => _selectItem(event.item, emit));
    on<Done>((event, emit) => _done());
    on<Back>((event, emit) => _back());

    add(Init());
  }

  final GetTopLeaguesUseCase _getTopLeaguesUseCase;
  final GetClubsByLeagueUseCase _getClubsByLeagueUseCase;
  final GetOtherLeaguesUseCase _getOtherLeaguesUseCase;
  final GetTopNationsUseCase _getTopNationsUseCase;
  final GetOtherNationsUseCase _getOtherNationsUseCase;
  final FilterNavigator _navigator;

  Future<void> _initial(
    Emitter<NestedFilterState> emit,
  ) async {
    switch (state.nestedFilterPageParams?.nestedFilterType) {
      case NestedFilterType.league:
        final topLeagueResult = await _getTopLeaguesUseCase();
        _handleLeagueResult(true, topLeagueResult, emit);

        final otherLeagueResult = await _getOtherLeaguesUseCase();
        _handleLeagueResult(false, otherLeagueResult, emit);
      case NestedFilterType.club:
        if (state.nestedFilterPageParams?.items != null) {
          final clubResult = await _getClubsByLeagueUseCase(
            leagueIds: state.nestedFilterPageParams!.items!
                .map((league) => league.eaId)
                .toList(),
          );
          _handleClubResult(clubResult, emit);
        }
      case NestedFilterType.nation:
        final topNationResult = await _getTopNationsUseCase();
        _handleNationResult(true, topNationResult, emit);

        final otherLeagueResult = await _getOtherNationsUseCase();
        _handleNationResult(false, otherLeagueResult, emit);
      case _:
        {}
    }

    emit(state.copyWith(processState: ProcessState.success));
  }

  void _selectItem(
    NestedFilterLayoutType item,
    Emitter<NestedFilterState> emit,
  ) {
    final selectedItems = List<NestedFilterLayoutType>.from(
      state.selectedItems ?? state.nestedFilterPageParams?.items ?? [],
    ).toList();
    if (selectedItems.contains(item)) {
      emit(state.copyWith(selectedItems: selectedItems..remove(item)));
    } else {
      emit(state.copyWith(selectedItems: selectedItems..add(item)));
    }
  }

  void _selectClub(Club club, Emitter<NestedFilterState> emit) {
    final selectedClubs = List<Club>.from(
      state.selectedClubs ?? state.nestedFilterPageParams?.clubs ?? [],
    ).toList();
    if (selectedClubs.contains(club)) {
      emit(state.copyWith(selectedClubs: selectedClubs..remove(club)));
    } else {
      emit(state.copyWith(selectedClubs: selectedClubs..add(club)));
    }
  }

  void _done() {
    final selectedItems = state.selectedItems;
    final selectedClubs = state.selectedClubs;
    switch (state.nestedFilterPageParams?.nestedFilterType) {
      case NestedFilterType.league:
        _navigator.closeAny<List<NestedFilterLayoutType>?>(
          (selectedItems?.isEmpty ?? true) ? null : selectedItems,
        );
      case NestedFilterType.club:
        _navigator.closeAny<List<Club>?>(
          (selectedClubs?.isEmpty ?? true) ? null : selectedClubs,
        );
      case NestedFilterType.nation:
        _navigator.closeAny<List<NestedFilterLayoutType>?>(
          (selectedItems?.isEmpty ?? true) ? null : selectedItems,
        );
      case null:
      // TODO: Handle this case.
      case NestedFilterType.rarity:
      // TODO: Handle this case.
    }
  }

  void _back() {
    switch (state.nestedFilterPageParams?.nestedFilterType) {
      case NestedFilterType.league || NestedFilterType.nation:
        _navigator.closeAny<List<NestedFilterLayoutType>?>(
          state.nestedFilterPageParams?.items,
        );
      case NestedFilterType.club:
        _navigator.closeAny<List<Club>?>(state.nestedFilterPageParams?.clubs);
      case null:
      // TODO: Handle this case.
      case NestedFilterType.rarity:
      // TODO: Handle this case.
    }
  }

  void _handleLeagueResult(
    bool isTop,
    Result<List<League>> leagues,
    Emitter<NestedFilterState> emit,
  ) {
    switch (leagues) {
      case Success(data: final leagues):
        isTop
            ? emit(state.copyWith(topLeagues: leagues))
            : emit(state.copyWith(otherLeagues: leagues));
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  void _handleClubResult(
    Result<List<Club>> clubs,
    Emitter<NestedFilterState> emit,
  ) {
    switch (clubs) {
      case Success(data: final clubs):
        emit(state.copyWith(clubs: _prepareClubMap(clubs)));
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  void _handleNationResult(
    bool isTop,
    Result<List<Nation>> leagues,
    Emitter<NestedFilterState> emit,
  ) {
    switch (leagues) {
      case Success(data: final nations):
        isTop
            ? emit(state.copyWith(topNations: nations))
            : emit(state.copyWith(otherNations: nations));
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }

  Map<int, List<Club>?>? _prepareClubMap(List<Club> clubs) {
    final map = groupBy<Club, int>(clubs, (club) => club.leagueEaId!);
    return map;
  }
}
