import 'package:core_analytics/analytics.dart';
import 'package:core_domain/src/domain/play_styles/model/play_style_category.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'play_style.mapper.dart';

@MappableClass()
class PlayStyle with PlayStyleMappable, AnalyticsEventParameters {
  PlayStyle({
    required this.eaId,
    required this.name,
    required this.categoryId,
    required this.whoHasIt,
    required this.playstyleDescription,
    required this.playstylePDescription,
    required this.imagePath,
  });

  final int eaId;
  final String name;
  final PlayStyleCategory categoryId;
  final String whoHasIt;
  final String playstyleDescription;
  final String playstylePDescription;
  final String imagePath;

  static const fromMap = PlayStyleMapper.fromMap;

  @override
  Map<String, Object> get analyticsParameters => {'eaId': eaId, 'name': name};
}
