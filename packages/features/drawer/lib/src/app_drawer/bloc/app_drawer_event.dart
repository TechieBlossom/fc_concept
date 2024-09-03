part of 'app_drawer_bloc.dart';

@MappableClass(discriminatorKey: 'appDrawerEvent')
abstract class AppDrawerEvent with AppDrawerEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends AppDrawerEvent with InitMappable {}

@MappableClass(discriminatorValue: 'compareTap')
class CompareTap extends AppDrawerEvent with CompareTapMappable {}

@MappableClass(discriminatorValue: 'playersTap')
class PlayersTap extends AppDrawerEvent with PlayersTapMappable {}

@MappableClass(discriminatorValue: 'popularTap')
class PopularTap extends AppDrawerEvent with PopularTapMappable {}
