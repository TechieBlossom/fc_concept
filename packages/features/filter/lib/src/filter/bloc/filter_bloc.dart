import 'package:collection/collection.dart';
import 'package:core_domain/domain.dart';
import 'package:feature_filter/src/navigation/navigator.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_page.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_type.dart';
import 'package:feature_filter/src/nested_filter/rarity/rarity_nested_filter_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'filter_bloc.freezed.dart';

part 'filter_event.dart';

part 'filter_state.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(
    @factoryParam FilterConfiguration? existingFilters,
    this._navigator,
  ) : super(
          FilterState(
            leagues: existingFilters?.leagues,
            clubs: existingFilters?.clubs,
            nations: existingFilters?.nations,
            positions: existingFilters?.positions,
            genders: existingFilters?.genders,
            rarities: existingFilters?.rarities,
          ),
        ) {
    on<FilterEvent>(
      (event, emit) => event.when(
        tapLeague: () => _tapLeague(emit),
        tapClub: () => _tapClub(emit),
        tapNation: () => _tapNation(emit),
        tapRarity: () => _tapRarity(emit),
        tapGender: (gender) => _tapGender(gender, emit),
        apply: _apply,
      ),
    );
  }

  final FilterNavigator _navigator;

  Future<void> _tapLeague(Emitter<FilterState> emit) async {
    final leagues = await _navigator.goToNestedFilter<NestedFilterLayoutType>(
      params: NestedFilterPageParams(
        nestedFilterType: NestedFilterType.league,
        items: state.leagues,
      ),
    );
    // 1. Checking if previous leagues are not same as new leagues,
    // if yes then there is no need to update filters as nothing really changed
    // 2. Remove clubs if there league is removed or in other words, only keep
    // clubs for which leagues is still present that
    if (!(state.leagues?.equals(leagues ?? []) ?? false)) {
      final newClubs = List<Club>.empty(growable: true);
      leagues?.forEach((league) {
        newClubs.addAll(
          state.clubs?.takeWhile((club) => club.league == league.id) ?? [],
        );
      });
      emit(
        state.copyWith(
          leagues: leagues,
          clubs: newClubs.isEmpty ? null : newClubs,
        ),
      );
    }
  }

  Future<void> _tapClub(Emitter<FilterState> emit) async {
    final clubs = await _navigator.goToNestedFilter<Club>(
      params: NestedFilterPageParams(
        nestedFilterType: NestedFilterType.club,
        items: state.leagues,
        clubs: state.clubs,
      ),
    );
    if (clubs?.isNotEmpty ?? false) {
      emit(
        state.copyWith(
          clubs: clubs,
        ),
      );
    }
  }

  Future<void> _tapNation(Emitter<FilterState> emit) async {
    final nations = await _navigator.goToNestedFilter<NestedFilterLayoutType>(
      params: NestedFilterPageParams(
        nestedFilterType: NestedFilterType.nation,
        items: state.nations,
      ),
    );
    if (nations?.isNotEmpty ?? false) {
      emit(
        state.copyWith(
          nations: nations,
        ),
      );
    }
  }

  Future<void> _tapRarity(Emitter<FilterState> emit) async {
    final rarities = await _navigator.goToRarityNestedFilter<Rarity>(
      params: RarityNestedFilterPageParams(
        items: state.rarities,
      ),
    );
    if (rarities?.isNotEmpty ?? false) {
      emit(
        state.copyWith(
          rarities: rarities,
        ),
      );
    }
  }

  void _tapGender(Gender gender, Emitter<FilterState> emit) {
    final genders = List<Gender>.from(state.genders ?? []);
    if (genders.contains(gender)) {
      genders.remove(gender);
    } else {
      genders.add(gender);
    }

    emit(
      state.copyWith(
        genders: genders,
      ),
    );
  }

  void _apply() {
    final filterConfiguration = FilterConfiguration(
      leagues: state.leagues,
      clubs: state.clubs,
      nations: state.nations,
      positions: state.positions,
      genders: state.genders,
      rarities: state.rarities,
    );
    _navigator.closeAny(filterConfiguration);
  }
}
