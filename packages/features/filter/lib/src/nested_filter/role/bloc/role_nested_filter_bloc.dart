import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_filter/src/navigation/navigator.dart';
import 'package:feature_filter/src/nested_filter/role/role_nested_filter_page.dart';
import 'package:injectable/injectable.dart';

part 'role_nested_filter_bloc.mapper.dart';

part 'role_nested_filter_event.dart';

part 'role_nested_filter_state.dart';

@injectable
class RoleNestedFilterBloc
    extends Bloc<RoleNestedFilterEvent, RoleNestedFilterState> {
  RoleNestedFilterBloc(
    @factoryParam RoleNestedFilterPageParams roleNestedFilterPageParams,
    @factoryParam List<Role> allRoles,
    this._navigator,
  ) : super(
          RoleNestedFilterState(
            roleNestedFilterPageParams: roleNestedFilterPageParams,
            roles: allRoles,
          ),
        ) {
    on<SelectRole>((event, emit) => _selectItem(event.item, emit));
    on<Clear>((event, emit) => _clear(emit));
    on<Done>((event, emit) => _done());
  }

  final FilterNavigator _navigator;

  void _selectItem(Role item, Emitter<RoleNestedFilterState> emit) {
    final selectedRoles = List<Role>.from(
      state.selectedRoles ?? state.roleNestedFilterPageParams?.items ?? [],
    ).toList();
    if (selectedRoles.contains(item)) {
      emit(state.copyWith(selectedRoles: selectedRoles..remove(item)));
    } else {
      emit(state.copyWith(selectedRoles: selectedRoles..add(item)));
    }
  }

  void _clear(Emitter<RoleNestedFilterState> emit) {
    emit(state.copyWith(selectedRoles: []));
  }

  void _done() {
    _navigator.closeAny<List<Role>?>(state.selectedRoles);
  }
}
