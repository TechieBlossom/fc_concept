import 'package:dart_mappable/dart_mappable.dart';

part 'play_style.mapper.dart';

@MappableClass()
class PlayStyle with PlayStyleMappable {
  PlayStyle({
    required this.eaId,
    required this.name,
    required this.categoryId,
    required this.whoHasIt,
    required this.imagePath,
  });

  final int eaId;
  final String name;
  final int categoryId;
  final String whoHasIt;
  final String imagePath;

  static const fromMap = PlayStyleMapper.fromMap;
}
