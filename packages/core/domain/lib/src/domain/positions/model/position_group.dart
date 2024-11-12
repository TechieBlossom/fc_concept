import 'package:flutter/material.dart';

@immutable
sealed class PositionGroup {
  const PositionGroup._();

  @override
  String toString() {
    return switch (this) {
      Forwards() => 'Forwards',
      Midfielders() => 'Midfielders',
      Defenders() => 'Defenders',
      Goalkeepers() => 'Goalkeepers',
    };
  }

  String toPositionTypeName() {
    return switch (this) {
      Forwards() => 'Attack',
      Midfielders() => 'Midfielder',
      Defenders() => 'Defence',
      Goalkeepers() => 'Goalkeepers',
    };
  }

  @override
  int get hashCode {
    return switch (this) {
      Forwards() => 0,
      Midfielders() => 1,
      Defenders() => 2,
      Goalkeepers() => 3,
    };
  }

  @override
  bool operator ==(Object other) {
    return super.hashCode == other.hashCode;
  }
}

class Forwards extends PositionGroup {
  const Forwards() : super._();
}

class Midfielders extends PositionGroup {
  const Midfielders() : super._();
}

class Defenders extends PositionGroup {
  const Defenders() : super._();
}

class Goalkeepers extends PositionGroup {
  const Goalkeepers() : super._();
}
