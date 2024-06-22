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
        return Position.gk;
      case 'LB':
        return Position.lb;
      case 'LCB':
        return Position.lcb;
      case 'CB':
        return Position.cb;
      case 'RCB':
        return Position.rcb;
      case 'RB':
        return Position.rb;
      case 'LWB':
        return Position.lwb;
      case 'LDM':
        return Position.ldm;
      case 'CDM':
        return Position.cdm;
      case 'RDM':
        return Position.rdm;
      case 'RWB':
        return Position.rwb;
      case 'LM':
        return Position.lm;
      case 'LCM':
        return Position.lcm;
      case 'CM':
        return Position.cm;
      case 'RCM':
        return Position.rcm;
      case 'RM':
        return Position.rm;
      case 'LAM':
        return Position.lam;
      case 'CAM':
        return Position.cam;
      case 'RAM':
        return Position.ram;
      case 'LW':
        return Position.lw;
      case 'LF':
        return Position.lf;
      case 'CF':
        return Position.cf;
      case 'RF':
        return Position.rf;
      case 'RW':
        return Position.rw;
      case 'LS':
        return Position.ls;
      case 'ST':
        return Position.st;
      case 'RS':
        return Position.rs;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Position self) {
    switch (self) {
      case Position.gk:
        return 'GK';
      case Position.lb:
        return 'LB';
      case Position.lcb:
        return 'LCB';
      case Position.cb:
        return 'CB';
      case Position.rcb:
        return 'RCB';
      case Position.rb:
        return 'RB';
      case Position.lwb:
        return 'LWB';
      case Position.ldm:
        return 'LDM';
      case Position.cdm:
        return 'CDM';
      case Position.rdm:
        return 'RDM';
      case Position.rwb:
        return 'RWB';
      case Position.lm:
        return 'LM';
      case Position.lcm:
        return 'LCM';
      case Position.cm:
        return 'CM';
      case Position.rcm:
        return 'RCM';
      case Position.rm:
        return 'RM';
      case Position.lam:
        return 'LAM';
      case Position.cam:
        return 'CAM';
      case Position.ram:
        return 'RAM';
      case Position.lw:
        return 'LW';
      case Position.lf:
        return 'LF';
      case Position.cf:
        return 'CF';
      case Position.rf:
        return 'RF';
      case Position.rw:
        return 'RW';
      case Position.ls:
        return 'LS';
      case Position.st:
        return 'ST';
      case Position.rs:
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
