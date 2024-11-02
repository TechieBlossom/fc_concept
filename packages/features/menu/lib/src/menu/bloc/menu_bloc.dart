import 'package:core_domain/auth.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_auth/auth.dart';
import 'package:feature_compare/compare.dart';
import 'package:feature_menu/src/navigator/navigator.dart';
import 'package:feature_player/player.dart';
import 'package:injectable/injectable.dart';

part 'menu_bloc.mapper.dart';

part 'menu_event.dart';

part 'menu_state.dart';

@injectable
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc(
    this._authNavigator,
    this._compareNavigator,
    this._playerNavigator,
    this._getPlayerCountUseCase,
    this._signOutUserUseCase,
    this._menuNavigator,
  ) : super(MenuState()) {
    on<Init>((event, emit) => _init(emit));
    on<SignInTap>((event, emit) => _signInTap());
    on<PlayersTap>((event, emit) => _playerTap());
    on<PopularTap>((event, emit) => _popularTap());
    on<CompareTap>((event, emit) => _compareTap());
    on<LogoutTap>((event, emit) => _signOutTap());
    on<CheapestByRatingTap>(
      (_, __) async => _menuNavigator.goToCheapestByRating(),
    );

    add(Init());
  }

  final MenuNavigator _menuNavigator;
  final AuthNavigator _authNavigator;
  final CompareNavigator _compareNavigator;
  final PlayerNavigator _playerNavigator;
  final GetPlayerCountUseCase _getPlayerCountUseCase;
  final SignOutUserUseCase _signOutUserUseCase;

  Future<void> _init(Emitter<MenuState> emit) async {
    final playerCount = await _getPlayerCountUseCase();
    emit(state.copyWith(playerCount: playerCount));
  }

  Future<void> _signInTap() async {
    await _authNavigator.goToLogin();
  }

  Future<void> _compareTap() async {
    await _compareNavigator.goToComparePage(null);
  }

  Future<void> _playerTap() async {
    await _playerNavigator.goToPlayers();
  }

  Future<void> _popularTap() async {
    await _playerNavigator.goToPopularPlayers();
  }

  Future<void> _signOutTap() async {
    await _signOutUserUseCase();
  }
}
