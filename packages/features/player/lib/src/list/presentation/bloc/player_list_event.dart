part of 'player_list_bloc.dart';

@MappableClass(discriminatorKey: 'playerListEvent')
abstract class PlayerListEvent with PlayerListEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends PlayerListEvent with InitMappable {}

@MappableClass(discriminatorValue: 'search')
class Search extends PlayerListEvent with SearchMappable {
  Search({
    required this.query,
  });

  final String query;
}

@MappableClass(discriminatorValue: 'nextPage')
class NextPage extends PlayerListEvent with NextPageMappable {}

@MappableClass(discriminatorValue: 'playerTap')
class PlayerTap extends PlayerListEvent with PlayerTapMappable {
  PlayerTap({
    required this.player,
    required this.resultWithSelection,
  });

  final Player player;
  final bool resultWithSelection;
}

@MappableClass(discriminatorValue: 'filterTap')
class FilterTap extends PlayerListEvent with FilterTapMappable {}
