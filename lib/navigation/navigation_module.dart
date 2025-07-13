import 'package:fut_maidaan/navigation/router_config.dart';
import 'package:injectable/injectable.dart';
import 'package:utility_navigation/navigation.dart';

@module
abstract class NavigationModule {
  @lazySingleton
  GoRouter get goRouter => appRouterConfig;
}