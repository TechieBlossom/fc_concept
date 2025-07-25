import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class LogEventUseCase {
  Future<void> call({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    unawaited(
      FirebaseAnalytics.instance.logEvent(
        name: name,
        parameters: parameters,
      ),
    );
  }
}
