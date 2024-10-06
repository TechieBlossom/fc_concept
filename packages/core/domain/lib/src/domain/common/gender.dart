import 'package:dart_mappable/dart_mappable.dart';

part 'gender.mapper.dart';

@MappableEnum()
enum Gender {
  male(1),
  female(2);

  const Gender(this.value);

  final int value;
}
