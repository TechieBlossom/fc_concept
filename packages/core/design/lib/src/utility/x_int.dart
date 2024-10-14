import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

extension XInt on int {
  Color get color => switch (this) {
        >= 80 => rating4,
        >= 71 => rating3,
        >= 61 => rating2,
        _ => rating1
      };

  Color get lightColor => switch (this) {
        >= 80 => lightRating4,
        >= 71 => lightRating3,
        >= 61 => lightRating2,
        _ => lightRating1
      };
}
