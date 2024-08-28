part of 'app_drawer_bloc.dart';

@MappableClass()
class AppDrawerState with AppDrawerStateMappable {
  AppDrawerState({
    this.playerCount,
  });

  final int? playerCount;
}
