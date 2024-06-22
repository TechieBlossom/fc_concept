// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'position.dart';

class PositionMapper extends EnumMapper<Position> {
  PositionMapper._();

  static PositionMapper? _instance;
  static PositionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PositionMapper._());
    }
    return _instance!;
  }

  static Position fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Position decode(dynamic value) {
    switch (value) {
      case 'GK':
        return Position.GK;
      case 'LB':
        return Position.LB;
      case 'LCB':
        return Position.LCB;
      case 'CB':
        return Position.CB;
      case 'RCB':
        return Position.RCB;
      case 'RB':
        return Position.RB;
      case 'LWB':
        return Position.LWB;
      case 'LDM':
        return Position.LDM;
      case 'CDM':
        return Position.CDM;
      case 'RDM':
        return Position.RDM;
      case 'RWB':
        return Position.RWB;
      case 'LM':
        return Position.LM;
      case 'LCM':
        return Position.LCM;
      case 'CM':
        return Position.CM;
      case 'RCM':
        return Position.RCM;
      case 'RM':
        return Position.RM;
      case 'LAM':
        return Position.LAM;
      case 'CAM':
        return Position.CAM;
      case 'RAM':
        return Position.RAM;
      case 'LW':
        return Position.LW;
      case 'LF':
        return Position.LF;
      case 'CF':
        return Position.CF;
      case 'RF':
        return Position.RF;
      case 'RW':
        return Position.RW;
      case 'LS':
        return Position.LS;
      case 'ST':
        return Position.ST;
      case 'RS':
        return Position.RS;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Position self) {
    switch (self) {
      case Position.GK:
        return 'GK';
      case Position.LB:
        return 'LB';
      case Position.LCB:
        return 'LCB';
      case Position.CB:
        return 'CB';
      case Position.RCB:
        return 'RCB';
      case Position.RB:
        return 'RB';
      case Position.LWB:
        return 'LWB';
      case Position.LDM:
        return 'LDM';
      case Position.CDM:
        return 'CDM';
      case Position.RDM:
        return 'RDM';
      case Position.RWB:
        return 'RWB';
      case Position.LM:
        return 'LM';
      case Position.LCM:
        return 'LCM';
      case Position.CM:
        return 'CM';
      case Position.RCM:
        return 'RCM';
      case Position.RM:
        return 'RM';
      case Position.LAM:
        return 'LAM';
      case Position.CAM:
        return 'CAM';
      case Position.RAM:
        return 'RAM';
      case Position.LW:
        return 'LW';
      case Position.LF:
        return 'LF';
      case Position.CF:
        return 'CF';
      case Position.RF:
        return 'RF';
      case Position.RW:
        return 'RW';
      case Position.LS:
        return 'LS';
      case Position.ST:
        return 'ST';
      case Position.RS:
        return 'RS';
    }
  }
}

extension PositionMapperExtension on Position {
  String toValue() {
    PositionMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Position>(this) as String;
  }
}
