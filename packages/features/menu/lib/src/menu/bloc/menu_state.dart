part of 'menu_bloc.dart';

@MappableClass()
class MenuState with MenuStateMappable {
  MenuState({
    this.playerCount,
  });

  final int? playerCount;
}
