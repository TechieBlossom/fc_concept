import 'package:collection/collection.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_filter/src/navigation/navigator.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_page.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_type.dart';
import 'package:feature_filter/src/nested_filter/rarity/rarity_nested_filter_page.dart';
import 'package:feature_filter/src/nested_filter/role/role_nested_filter_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'filter_bloc.mapper.dart';
part 'filter_event.dart';
part 'filter_state.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(
    @factoryParam FilterConfiguration? existingFilters,
    this._navigator,
    this._getPositionsFromPositionGroup,
  ) : super(
          FilterState(
            leagues: existingFilters?.leagues,
            clubs: existingFilters?.clubs,
            nations: existingFilters?.nations,
            positions: existingFilters?.positions,
            positionGroups: existingFilters?.positionGroups,
            genders: existingFilters?.genders,
            foots: existingFilters?.foots,
            rarities: existingFilters?.rarities,
            roles: existingFilters?.roles,
            overallRatingRange: existingFilters?.overallRatingRange ??
                const RangeValues(47, 99),
          ),
        ) {
    on<Init>((event, emit) => _init(emit));
    on<TapLeague>((event, emit) => _tapLeague(emit));
    on<TapClub>((event, emit) => _tapClub(emit));
    on<TapNation>((event, emit) => _tapNation(emit));
    on<TapRarity>((event, emit) => _tapRarity(emit));
    on<ChangeOverallRating>((event, emit) => _changeOverallRating(event, emit));
    on<TapGender>((event, emit) => _tapGender(event.gender, emit));
    on<TapFoot>((event, emit) => _tapFoot(event.foot, emit));
    on<TapPosition>((event, emit) => _tapPosition(event.position, emit));
    on<TapPositionGroup>(
      (event, emit) => _tapPositionGroup(
        event,
        emit,
      ),
    );
    on<TapRole>((event, emit) => _tapRoles(emit));
    on<Apply>((event, emit) => _apply());

    add(Init());
  }

  final FilterNavigator _navigator;
  final GetPositionsFromPositionGroup _getPositionsFromPositionGroup;

  void _init(Emitter<FilterState> emit) {}

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
    // clubs for which leagues is still present
    if (!(state.leagues?.equals(leagues ?? []) ?? false)) {
      final newClubs = List<Club>.empty(growable: true);
      leagues?.forEach((league) {
        newClubs.addAll(
          state.clubs?.takeWhile((club) => club.leagueEaId == league.eaId) ??
              [],
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
    if (!(state.clubs?.equals(clubs ?? []) ?? false)) {
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
    if (!(state.nations?.equals(nations ?? []) ?? false)) {
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
    if (!(state.rarities?.equals(rarities ?? []) ?? false)) {
      emit(
        state.copyWith(
          rarities: rarities,
        ),
      );
    }
  }

  Future<void> _tapRoles(Emitter<FilterState> emit) async {
    final roles = await _navigator.goToRoleNestedFilter<Rarity>(
      params: RoleNestedFilterPageParams(
        items: state.roles,
      ),
    );
    if (!(state.roles?.equals(roles ?? []) ?? false)) {
      emit(
        state.copyWith(
          roles: roles,
        ),
      );
    }
  }

  void _changeOverallRating(
    ChangeOverallRating event,
    Emitter<FilterState> emit,
  ) =>
      emit(state.copyWith(overallRatingRange: event.overallRatingRange));

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

  void _tapFoot(Foot foot, Emitter<FilterState> emit) {
    final foots = List<Foot>.from(state.foots ?? []);
    if (foots.contains(foot)) {
      foots.remove(foot);
    } else {
      foots.add(foot);
    }

    emit(
      state.copyWith(
        foots: foots,
      ),
    );
  }

  void _tapPosition(
    Position position,
    Emitter<FilterState> emit,
  ) {
    final positions = List<Position>.from(state.positions ?? []);
    if (positions.contains(position)) {
      positions.remove(position);
    } else {
      positions.add(position);
    }

    emit(
      state.copyWith(
        positions: positions,
      ),
    );
  }

  void _tapPositionGroup(
    TapPositionGroup event,
    Emitter<FilterState> emit,
  ) {
    final positions = List<Position>.from(state.positions ?? []);
    final positionGroups = List<PositionGroup>.from(state.positionGroups ?? []);
    final positionsFromGroup = _getPositionsFromPositionGroup(
      event.allPositions,
      event.positionGroup,
    );

    for (var i = 0; i < positionsFromGroup.length; i++) {
      if (positions.contains(positionsFromGroup[i])) {
        positions.remove(positionsFromGroup[i]);
      } else {
        positions.add(positionsFromGroup[i]);
      }
    }

    if (positionGroups.contains(event.positionGroup)) {
      positionGroups.remove(event.positionGroup);
    } else {
      positionGroups.add(event.positionGroup);
    }

    emit(
      state.copyWith(
        positions: positions,
        positionGroups: positionGroups,
      ),
    );
  }

  void _apply() {
    final filterConfiguration = FilterConfiguration(
      leagues: state.leagues,
      clubs: state.clubs,
      nations: state.nations,
      positions: state.positions,
      positionGroups: state.positionGroups,
      genders: state.genders,
      foots: state.foots,
      rarities: state.rarities,
      roles: state.roles,
      overallRatingRange: state.overallRatingRange,
    );
    _navigator.closeAny(filterConfiguration);
  }
}
