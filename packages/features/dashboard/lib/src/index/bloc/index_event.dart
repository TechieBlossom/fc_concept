part of 'index_bloc.dart';

@MappableClass(discriminatorKey: 'event')
abstract class IndexEvent with IndexEventMappable {}

@MappableClass(discriminatorValue: 'init')
class Init extends IndexEvent with InitMappable {}

@MappableClass(discriminatorValue: 'chartHovered')
class ChartHovered extends IndexEvent with ChartHoveredMappable {
  ChartHovered({
    required this.indexType,
    required this.indexData,
  });

  final IndexType indexType;
  final IndexData? indexData;
}
