import 'package:dart_mappable/dart_mappable.dart';
import 'package:feature_compare/compare.dart';
import 'package:feature_player/player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'app_drawer_bloc.mapper.dart';
part 'app_drawer_event.dart';

@injectable
class AppDrawerBloc extends Bloc<AppDrawerEvent, void> {
  AppDrawerBloc(
    this._playerNavigator,
    this._compareNavigator,
  ) : super(null) {
    on<Compare>((event, emit) => _compare);
  }

  final PlayerNavigator _playerNavigator;
  final CompareNavigator _compareNavigator;

  Future<void> _compare() async {
    await _compareNavigator.goToComparePage(null);
  }
}
