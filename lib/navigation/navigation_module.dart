import 'package:fc_concept/navigation/router_config.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@module
abstract class NavigationModule {
  @lazySingleton
  GoRouter get goRouter => appRouterConfig;
}