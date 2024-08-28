import 'package:collection/collection.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_filter/src/filter/position/position_group.dart';
import 'package:feature_filter/src/navigation/navigator.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_page.dart';
import 'package:feature_filter/src/nested_filter/nested_filter_type.dart';
import 'package:feature_filter/src/nested_filter/rarity/rarity_nested_filter_page.dart';
import 'package:feature_filter/src/nested_filter/rating/rating_nested_filter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'filter_bloc.mapper.dart';

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
            positionGroups: null,
            genders: existingFilters?.genders,
            foots: existingFilters?.foots,
            rarities: existingFilters?.rarities,
            overallRating: existingFilters?.overallRating,
          ),
        ) {
    on<Init>((event, emit) => _init(emit));
    on<TapLeague>((event, emit) => _tapLeague(emit));
    on<TapClub>((event, emit) => _tapClub(emit));
    on<TapNation>((event, emit) => _tapNation(emit));
    on<TapRarity>((event, emit) => _tapRarity(emit));
    on<TapOverallRating>((event, emit) => _tapOverallRating(emit));
    on<TapGender>((event, emit) => _tapGender(event.gender, emit));
    on<TapFoot>((event, emit) => _tapFoot(event.foot, emit));
    on<TapPosition>((event, emit) => _tapPosition(event.position, emit));
    on<TapPositionGroup>(
      (event, emit) => _tapPositionGroup(
        event.positionGroup,
        emit,
      ),
    );
    on<Apply>((event, emit) => _apply());

    add(Init());
  }

  final FilterNavigator _navigator;

  void _init(Emitter<FilterState> emit) {
    final positions = state.positions ?? [];
    final positionGroups = List<PositionGroup>.empty(growable: true);
    if (positions.contains(Position.lw) &&
        positions.contains(Position.rw) &&
        positions.contains(Position.lf) &&
        positions.contains(Position.rf) &&
        positions.contains(Position.st) &&
        positions.contains(Position.cf) &&
        positions.contains(Position.ls) &&
        positions.contains(Position.rs)) {
      positionGroups.add(PositionGroup.attackers);
    }
    if (positions.contains(Position.cm) &&
        positions.contains(Position.cam) &&
        positions.contains(Position.cdm) &&
        positions.contains(Position.ldm) &&
        positions.contains(Position.rdm) &&
        positions.contains(Position.lam) &&
        positions.contains(Position.ram) &&
        positions.contains(Position.lm) &&
        positions.contains(Position.rm) &&
        positions.contains(Position.lcm) &&
        positions.contains(Position.rcm)) {
      positionGroups.add(PositionGroup.midfielders);
    }
    if (positions.contains(Position.lcb) &&
        positions.contains(Position.rcb) &&
        positions.contains(Position.lb) &&
        positions.contains(Position.rb) &&
        positions.contains(Position.lwb) &&
        positions.contains(Position.rwb) &&
        positions.contains(Position.cb)) {
      positionGroups.add(PositionGroup.defenders);
    }

    emit(state.copyWith(positionGroups: positionGroups));
  }

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

  Future<void> _tapOverallRating(Emitter<FilterState> emit) async {
    final overallRatings = await _navigator.goToOverallRatingNestedFilter<int>(
      params: RatingNestedFilterPageParams(
        items: state.overallRating,
      ),
    );
    if (overallRatings?.isNotEmpty ?? false) {
      emit(
        state.copyWith(
          overallRating: overallRatings,
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
    PositionGroup positionGroup,
    Emitter<FilterState> emit,
  ) {
    final positions = List<Position>.from(state.positions ?? []);
    final positionGroups = List<PositionGroup>.from(state.positionGroups ?? []);
    final positionsFromGroup = switch (positionGroup) {
      PositionGroup.attackers => [
          Position.lw,
          Position.rw,
          Position.lf,
          Position.rf,
          Position.st,
          Position.cf,
          Position.ls,
          Position.rs,
        ],
      PositionGroup.midfielders => [
          Position.cm,
          Position.cam,
          Position.cdm,
          Position.ldm,
          Position.rdm,
          Position.lam,
          Position.ram,
          Position.lm,
          Position.rm,
          Position.lcm,
          Position.rcm,
        ],
      PositionGroup.defenders => [
          Position.lcb,
          Position.rcb,
          Position.lb,
          Position.rb,
          Position.lwb,
          Position.rwb,
          Position.cb,
        ],
    };

    for (var i = 0; i < positionsFromGroup.length; i++) {
      if (positions.contains(positionsFromGroup[i])) {
        positions.remove(positionsFromGroup[i]);
      } else {
        positions.add(positionsFromGroup[i]);
      }
    }

    if (positionGroups.contains(positionGroup)) {
      positionGroups.remove(positionGroup);
    } else {
      positionGroups.add(positionGroup);
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
      genders: state.genders,
      foots: state.foots,
      rarities: state.rarities,
      overallRating: state.overallRating,
    );
    _navigator.closeAny(filterConfiguration);
  }
}
