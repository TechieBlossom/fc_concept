// enum PlayerGroup {
//   recent,
//   attack,
//   midfielder,
//   defence,
//   goalKeeper,
//   sbc,
// }

import 'package:core_domain/domain.dart';

sealed class PlayerGroup {
  const PlayerGroup();
}

class Attack extends PlayerGroup {
  const Attack();
}

class Midfielder extends PlayerGroup {
  const Midfielder();
}

class Defence extends PlayerGroup {
  const Defence();
}

class GoalKeeper extends PlayerGroup {
  const GoalKeeper();
}

class Sbc extends PlayerGroup {
  const Sbc();
}

class TrendingPlayers extends PlayerGroup {
  const TrendingPlayers(this.raritySquad);

  final RaritySquad? raritySquad;
}
