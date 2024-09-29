part of 'metadata_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class MetadataEvent with MetadataEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends MetadataEvent with InitMappable {}
