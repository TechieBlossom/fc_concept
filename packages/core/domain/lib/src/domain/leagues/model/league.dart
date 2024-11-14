import 'package:core_analytics/analytics.dart';
import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'league.mapper.dart';

@MappableClass(discriminatorValue: 'league')
class League extends NestedFilterLayoutType with LeagueMappable, AnalyticsEventParameters {
  League({
    required int eaId,
    required String name,
    this.imagePath,
    this.imageLightPath,
  }) : super(
          eaId: eaId,
          name: name,
        );

  final String? imagePath;
  final String? imageLightPath;

  static const fromMap = LeagueMapper.fromMap;

  @override
  Map<String, Object> get analyticsParameters => {'id': eaId, 'name': name};
}
