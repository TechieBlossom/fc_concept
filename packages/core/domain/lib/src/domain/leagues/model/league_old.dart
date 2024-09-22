import 'package:core_domain/src/domain/common/gender.dart';
import 'package:core_domain/src/domain/common/nested_filter_layout_type.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'league_old.mapper.dart';

@Deprecated('Use League instead')
@MappableClass(discriminatorValue: 'league')
class LeagueOld extends NestedFilterLayoutType with LeagueOldMappable {
  LeagueOld({
    required int id,
    required String name,
    required this.nationId,
    required this.gender,
  }) : super(
          eaId: id,
          name: name,
        );

  final int? nationId;
  final Gender? gender;

  static const fromMap = LeagueOldMapper.fromMap;
}
