import 'package:core_analytics/analytics.dart';
import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'nation.mapper.dart';

@MappableClass(discriminatorValue: 'nation')
class Nation extends NestedFilterLayoutType
    with NationMappable, AnalyticsEventParameters {
  Nation({
    required int eaId,
    required String name,
    this.imagePath,
  }) : super(
          eaId: eaId,
          name: name,
        );

  final String? imagePath;

  static const fromMap = NationMapper.fromMap;

  @override
  Map<String, Object> get analyticsParameters => {'id': eaId, 'name': name};
}
