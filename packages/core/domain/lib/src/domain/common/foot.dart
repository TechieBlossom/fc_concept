import 'package:dart_mappable/dart_mappable.dart';

part 'foot.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.pascalCase)
enum Foot {
  right(1),
  left(2);

  const Foot(this.value);

  final int value;

  bool isRight() => this == Foot.right;
}
