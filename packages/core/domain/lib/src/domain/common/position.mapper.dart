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
      case 'LWB':
        return Position.lwb;
      case 'RWB':
        return Position.rwb;
      case 'LB':
        return Position.lb;
      case 'RB':
        return Position.rb;
      case 'LCB':
        return Position.lcb;
      case 'RCB':
        return Position.rcb;
      case 'CB':
        return Position.cb;
      case 'LDM':
        return Position.ldm;
      case 'RDM':
        return Position.rdm;
      case 'CDM':
        return Position.cdm;
      case 'LM':
        return Position.lm;
      case 'RM':
        return Position.rm;
      case 'LCM':
        return Position.lcm;
      case 'RCM':
        return Position.rcm;
      case 'CM':
        return Position.cm;
      case 'LAM':
        return Position.lam;
      case 'RAM':
        return Position.ram;
      case 'CAM':
        return Position.cam;
      case 'LW':
        return Position.lw;
      case 'RW':
        return Position.rw;
      case 'LF':
        return Position.lf;
      case 'RF':
        return Position.rf;
      case 'LS':
        return Position.ls;
      case 'RS':
        return Position.rs;
      case 'ST':
        return Position.st;
      case 'CF':
        return Position.cf;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Position self) {
    switch (self) {
      case Position.gk:
        return 'GK';
      case Position.lwb:
        return 'LWB';
      case Position.rwb:
        return 'RWB';
      case Position.lb:
        return 'LB';
      case Position.rb:
        return 'RB';
      case Position.lcb:
        return 'LCB';
      case Position.rcb:
        return 'RCB';
      case Position.cb:
        return 'CB';
      case Position.ldm:
        return 'LDM';
      case Position.rdm:
        return 'RDM';
      case Position.cdm:
        return 'CDM';
      case Position.lm:
        return 'LM';
      case Position.rm:
        return 'RM';
      case Position.lcm:
        return 'LCM';
      case Position.rcm:
        return 'RCM';
      case Position.cm:
        return 'CM';
      case Position.lam:
        return 'LAM';
      case Position.ram:
        return 'RAM';
      case Position.cam:
        return 'CAM';
      case Position.lw:
        return 'LW';
      case Position.rw:
        return 'RW';
      case Position.lf:
        return 'LF';
      case Position.rf:
        return 'RF';
      case Position.ls:
        return 'LS';
      case Position.rs:
        return 'RS';
      case Position.st:
        return 'ST';
      case Position.cf:
        return 'CF';
    }
  }
}

extension PositionMapperExtension on Position {
  String toValue() {
    PositionMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Position>(this) as String;
  }
}
