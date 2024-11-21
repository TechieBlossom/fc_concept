import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';

void showWiredashFeedback(BuildContext context) {
  Wiredash.of(context).show();
}

void showWiredashPromoterSurvey(BuildContext context, {bool force = false}) {
  Wiredash.of(context).showPromoterSurvey(
    force: force,
  );
}
