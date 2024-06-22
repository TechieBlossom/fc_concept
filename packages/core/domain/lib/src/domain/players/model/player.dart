import 'package:core_domain/src/domain/common/card_color.dart';
import 'package:core_domain/src/domain/common/foot.dart';
import 'package:core_domain/src/domain/common/gender.dart';
import 'package:core_domain/src/domain/common/position.dart';
import 'package:core_domain/src/domain/common/work_rate.dart';
import 'package:core_domain/src/domain/rarity/model/rarity.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'player.mapper.dart';

@MappableClass()
class Player with PlayerMappable {
  const Player({
    required this.id,
    required this.name,
    this.commonName,
    this.firstName,
    this.lastName,
    required this.rating,
    required this.rarity,
    this.height,
    this.weight,
    this.age,
    this.position,
    this.skillMoves,
    this.weakFoot,
    this.foot,
    this.attackWorkRate,
    this.defenseWorkRate,
    this.pace,
    this.shooting,
    this.passing,
    this.dribbling,
    this.defending,
    this.physicality,
    this.gender,
    this.color,
  });

  final int id;
  final String name;
  final String? commonName;
  final String? firstName;
  final String? lastName;
  final int rating;
  @MappableField(key: 'table_rarity')
  final Rarity rarity;
  final int? height;
  final int? weight;
  final int? age;
  final Position? position;
  final int? skillMoves;
  final int? weakFoot;
  final Foot? foot;
  final WorkRate? attackWorkRate;
  final WorkRate? defenseWorkRate;
  final int? pace;
  final int? shooting;
  final int? passing;
  final int? dribbling;
  final int? defending;
  final int? physicality;
  final Gender? gender;
  final CardColor? color;

  static const fromJson = PlayerMapper.fromMap;
}