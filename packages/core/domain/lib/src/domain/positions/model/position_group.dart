import 'package:core_analytics/analytics.dart';
import 'package:flutter/material.dart';

@immutable
sealed class PositionGroup with AnalyticsEventParameters {
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

  static PositionGroup fromString(String value) {
    if (value == 'Forwards') {
      return const Forwards();
    } else if (value == 'Midfielders') {
      return const Midfielders();
    } else if (value == 'Defenders') {
      return const Defenders();
    }
      return const Goalkeepers();
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

class Forwards extends PositionGroup with AnalyticsEventParameters {
  const Forwards() : super._();

  @override
  Map<String, Object> get analyticsParameters => {
        'positionGroup': 'Forwards',
      };
}

class Midfielders extends PositionGroup with AnalyticsEventParameters {
  const Midfielders() : super._();

  @override
  Map<String, Object> get analyticsParameters => {
        'positionGroup': 'Midfielders',
      };
}

class Defenders extends PositionGroup with AnalyticsEventParameters {
  const Defenders() : super._();

  @override
  Map<String, Object> get analyticsParameters => {
        'positionGroup': 'Defenders',
      };
}

class Goalkeepers extends PositionGroup with AnalyticsEventParameters {
  const Goalkeepers() : super._();

  @override
  Map<String, Object> get analyticsParameters => {
        'positionGroup': 'Goalkeepers',
      };
}
