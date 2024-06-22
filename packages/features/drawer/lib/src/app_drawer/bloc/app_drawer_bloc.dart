import 'package:feature_compare/compare.dart';
import 'package:feature_player/player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_drawer_bloc.freezed.dart';
part 'app_drawer_event.dart';

@injectable
class AppDrawerBloc extends Bloc<AppDrawerEvent, void> {
  AppDrawerBloc(
    this._playerNavigator,
    this._compareNavigator,
  ) : super(null) {
    on<AppDrawerEvent>(
      (event, emit) => event.when(
        compare: () => _compare(),
      ),
    );
  }

  final PlayerNavigator _playerNavigator;
  final CompareNavigator _compareNavigator;

  Future<void> _compare() async {
    await _compareNavigator.goToComparePage(null);
  }
}
