import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_di/src/get_it.dart';

T di<T extends Object>({
  dynamic param1,
  dynamic param2,
  String? instanceName,
}) =>
    getIt<T>(param1: param1, param2: param2, instanceName: instanceName);

typedef DiContainerInitializer = FutureOr<void> Function(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
});

Future<void> initializeDiContainers(
  List<DiContainerInitializer> initializers, {
  String? environment,
  bool reset = true,
}) async {
  if (reset) {
    await getIt.reset();
  }

  for (final initializer in initializers) {
    await initializer(
      getIt,
      environment: environment,
      environmentFilter: null,
    );
  }
}
