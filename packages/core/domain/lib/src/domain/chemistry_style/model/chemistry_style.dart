import 'package:core_domain/src/domain/chemistry_style/model/chemistry_modifier.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'chemistry_style.mapper.dart';

@MappableClass()
class ChemistryStyle with ChemistryStyleMappable {
  ChemistryStyle({
    required this.id,
    required this.name,
    required this.shortName,
    required this.charCode,
    required this.isGkStyle,
    required this.oneChemistryModifiers,
    required this.twoChemistryModifiers,
    required this.threeChemistryModifiers,
  });

  final String id;
  final String name;
  final String shortName;
  final String charCode;
  final bool isGkStyle;
  final ChemistryModifier oneChemistryModifiers;
  final ChemistryModifier twoChemistryModifiers;
  final ChemistryModifier threeChemistryModifiers;

  static const fromMap = ChemistryStyleMapper.fromMap;
}
