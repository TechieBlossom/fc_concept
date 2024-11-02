part of 'menu_bloc.dart';

@MappableClass(discriminatorKey: 'MenuEvent')
abstract class MenuEvent with MenuEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends MenuEvent with InitMappable {}

@MappableClass(discriminatorValue: 'signInTap')
class SignInTap extends MenuEvent with SignInTapMappable {}

@MappableClass(discriminatorValue: 'compareTap')
class CompareTap extends MenuEvent with CompareTapMappable {}

@MappableClass(discriminatorValue: 'playersTap')
class PlayersTap extends MenuEvent with PlayersTapMappable {}

@MappableClass(discriminatorValue: 'popularTap')
class PopularTap extends MenuEvent with PopularTapMappable {}

@MappableClass(discriminatorValue: 'logoutTap')
class LogoutTap extends MenuEvent with LogoutTapMappable {}

@MappableClass(discriminatorValue: 'cheapestByRatingTap')
class CheapestByRatingTap extends MenuEvent with CheapestByRatingTapMappable {}
