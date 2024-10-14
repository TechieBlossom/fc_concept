import 'package:dart_mappable/dart_mappable.dart';

part 'gender.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.pascalCase)
enum Gender {
  male(1),
  female(2);

  const Gender(this.value);

  final int value;

  bool isMale() => this == Gender.male;
}
