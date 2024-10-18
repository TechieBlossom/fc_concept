import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_filter/src/navigation/navigator.dart';
import 'package:feature_filter/src/nested_filter/role/role_nested_filter_page.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'role_nested_filter_bloc.mapper.dart';

part 'role_nested_filter_event.dart';

part 'role_nested_filter_state.dart';

@injectable
class RoleNestedFilterBloc
    extends Bloc<RoleNestedFilterEvent, RoleNestedFilterState> {
  RoleNestedFilterBloc(
    @factoryParam RoleNestedFilterPageParams rarityNestedFilterPageParams,
    this._getAllRolesUseCase,
    this._navigator,
  ) : super(
          RoleNestedFilterState(
            rarityNestedFilterPageParams: rarityNestedFilterPageParams,
          ),
        ) {
    on<Init>((event, emit) => _initial(emit));
    on<SelectRole>((event, emit) => _selectItem(event.item, emit));
    on<Done>((event, emit) => _done());

    add(Init());
  }

  final GetAllRolesUseCase _getAllRolesUseCase;
  final FilterNavigator _navigator;

  Future<void> _initial(
    Emitter<RoleNestedFilterState> emit,
  ) async {
    final rolesResult = await _getAllRolesUseCase();
    _handleRaritiesResult(rolesResult, emit);
  }

  void _selectItem(Role item, Emitter<RoleNestedFilterState> emit) {
    final selectedRarities = List<Role>.from(
      state.selectedRarities ?? state.rarityNestedFilterPageParams?.items ?? [],
    ).toList();
    if (selectedRarities.contains(item)) {
      emit(state.copyWith(selectedRarities: selectedRarities..remove(item)));
    } else {
      emit(state.copyWith(selectedRarities: selectedRarities..add(item)));
    }
  }

  void _done() {
    _navigator.closeAny<List<Role>?>(
      (state.selectedRarities?.isEmpty ?? true) ? null : state.selectedRarities,
    );
  }

  void _handleRaritiesResult(
    Result<List<Role>> roles,
    Emitter<RoleNestedFilterState> emit,
  ) {
    switch (roles) {
      case Success(data: final roles):
        emit(
          state.copyWith(
            roles: roles,
            processState: ProcessState.success,
          ),
        );
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }
}
