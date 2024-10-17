import 'package:dart_mappable/dart_mappable.dart';

part 'index_data.mapper.dart';

@MappableClass()
class IndexData with IndexDataMappable {
  IndexData({
    required this.forwards,
    required this.midfielders,
    required this.defenders,
    required this.goalkeepers,
  });

  final double forwards;
  final double midfielders;
  final double defenders;
  final double goalkeepers;

  static const fromMap = IndexDataMapper.fromMap;
}
