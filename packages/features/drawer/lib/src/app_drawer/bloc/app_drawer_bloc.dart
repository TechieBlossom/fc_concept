import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_compare/compare.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'app_drawer_bloc.mapper.dart';
part 'app_drawer_event.dart';
part 'app_drawer_state.dart';

@injectable
class AppDrawerBloc extends Bloc<AppDrawerEvent, AppDrawerState> {
  AppDrawerBloc(
    this._compareNavigator,
    this._getPlayerCountUseCase,
  ) : super(AppDrawerState()) {
    on<Compare>((event, emit) => _compare());
    on<Init>((event, emit) => _init(emit));

    add(Init());
  }

  final CompareNavigator _compareNavigator;
  final GetPlayerCountUseCase _getPlayerCountUseCase;

  Future<void> _compare() async {
    await _compareNavigator.goToComparePage(null);
  }

  Future<void> _init(Emitter<AppDrawerState> emit) async {
    final playerCount = await _getPlayerCountUseCase();
    emit(state.copyWith(playerCount: playerCount));
  }
}
