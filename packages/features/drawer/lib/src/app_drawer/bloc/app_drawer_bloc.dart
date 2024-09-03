import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_compare/compare.dart';
import 'package:feature_player/player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'app_drawer_bloc.mapper.dart';
part 'app_drawer_event.dart';
part 'app_drawer_state.dart';

@injectable
class AppDrawerBloc extends Bloc<AppDrawerEvent, AppDrawerState> {
  AppDrawerBloc(
    this._compareNavigator,
    this._playerNavigator,
    this._getPlayerCountUseCase,
  ) : super(AppDrawerState()) {
    on<Init>((event, emit) => _init(emit));
    on<PlayersTap>((event, emit) => _playerTap());
    on<PopularTap>((event, emit) => _popularTap());
    on<CompareTap>((event, emit) => _compareTap());

    add(Init());
  }

  final CompareNavigator _compareNavigator;
  final PlayerNavigator _playerNavigator;
  final GetPlayerCountUseCase _getPlayerCountUseCase;

  Future<void> _compareTap() async {
    await _compareNavigator.goToComparePage(null);
  }

  Future<void> _playerTap() async {
    await _playerNavigator.goToPlayers();
  }

  Future<void> _popularTap() async {
    await _playerNavigator.goToPopularPlayers();
  }

  Future<void> _init(Emitter<AppDrawerState> emit) async {
    final playerCount = await _getPlayerCountUseCase();
    emit(state.copyWith(playerCount: playerCount));
  }
}
