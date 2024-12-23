part of 'player_collection_bloc.dart';

@MappableClass(discriminatorKey: 'playerCollectionEvent')
abstract class PlayerCollectionEvent with PlayerCollectionEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends PlayerCollectionEvent with InitMappable {}

@MappableClass(discriminatorValue: 'search')
class Search extends PlayerCollectionEvent with SearchMappable {
  Search({
    required this.query,
  });

  final String query;
}

@MappableClass(discriminatorValue: 'nextPage')
class NextPage extends PlayerCollectionEvent with NextPageMappable {}

@MappableClass(discriminatorValue: 'playerTap')
class PlayerTap extends PlayerCollectionEvent with PlayerTapMappable {
  PlayerTap({
    required this.player,
    required this.resultWithSelection,
  });

  final Player player;
  final bool resultWithSelection;
}
