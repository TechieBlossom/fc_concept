import 'package:core_domain/src/domain/common/gender.dart';
import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'league.mapper.dart';

@MappableClass(discriminatorValue: 'league')
class League extends NestedFilterLayoutType with LeagueMappable {
  League({
    required int id,
    required String name,
    required this.nationId,
    required this.gender,
  }) : super(
          id: id,
          name: name,
        );

  final int? nationId;
  final Gender? gender;

  static const fromMap = LeagueMapper.fromMap;
}
