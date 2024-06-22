part of 'app_drawer_bloc.dart';

@MappableClass(discriminatorKey: 'appDrawerEvent')
abstract class AppDrawerEvent with AppDrawerEventMappable {}

@MappableClass(discriminatorValue: 'compare')
class Compare extends AppDrawerEvent with CompareMappable {}
