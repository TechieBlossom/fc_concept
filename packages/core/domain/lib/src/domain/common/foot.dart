import 'package:core_analytics/analytics.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'foot.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.pascalCase)
enum Foot with AnalyticsEventParameters{
  right(1),
  left(2);

  const Foot(this.value);

  final int value;

  bool isRight() => this == Foot.right;

  @override
  Map<String, Object> get analyticsParameters => {'foot': toValue()};
}
