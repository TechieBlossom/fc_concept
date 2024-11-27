part of 'index_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class IndexEvent with IndexEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends IndexEvent with InitMappable {}
