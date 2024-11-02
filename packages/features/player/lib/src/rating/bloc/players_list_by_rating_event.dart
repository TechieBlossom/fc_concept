part of 'players_list_by_rating_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class PlayersListByRatingEvent with PlayersListByRatingEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends PlayersListByRatingEvent with InitMappable {}

@MappableClass(discriminatorValue: 'ChangeRating')
class ChangeRating extends PlayersListByRatingEvent with ChangeRatingMappable {
  ChangeRating({
    required this.rating,
  });

  final int rating;
}

@MappableClass(discriminatorValue: 'nextPage')
class NextPage extends PlayersListByRatingEvent with NextPageMappable {}

@MappableClass(discriminatorValue: 'playerTap')
class PlayerTap extends PlayersListByRatingEvent with PlayerTapMappable {
  PlayerTap({
    required this.player,
  });

  final Player player;
}
