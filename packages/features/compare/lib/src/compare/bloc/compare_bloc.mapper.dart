// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'compare_bloc.dart';

class CompareEventMapper extends ClassMapperBase<CompareEvent> {
  CompareEventMapper._();

  static CompareEventMapper? _instance;
  static CompareEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompareEventMapper._());
      InitMapper.ensureInitialized();
      SelectPlayerMapper.ensureInitialized();
      SelectVersionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CompareEvent';

  @override
  final MappableFields<CompareEvent> fields = const {};

  static CompareEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'CompareEvent', 'compareEvent', '${data.value['compareEvent']}');
  }

  @override
  final Function instantiate = _instantiate;

  static CompareEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CompareEvent>(map);
  }

  static CompareEvent fromJson(String json) {
    return ensureInitialized().decodeJson<CompareEvent>(json);
  }
}

mixin CompareEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  CompareEventCopyWith<CompareEvent, CompareEvent, CompareEvent> get copyWith;
}

abstract class CompareEventCopyWith<$R, $In extends CompareEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  CompareEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      CompareEventMapper.ensureInitialized().addSubMapper(_instance!);
      PlayerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Init';

  static Player _$player(Init v) => v.player;
  static const Field<Init, Player> _f$player = Field('player', _$player);

  @override
  final MappableFields<Init> fields = const {
    #player: _f$player,
  };

  @override
  final String discriminatorKey = 'compareEvent';
  @override
  final dynamic discriminatorValue = 'init';
  @override
  late final ClassMapperBase superMapper =
      CompareEventMapper.ensureInitialized();

  static Init _instantiate(DecodingData data) {
    return Init(player: data.dec(_f$player));
  }

  @override
  final Function instantiate = _instantiate;

  static Init fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Init>(map);
  }

  static Init fromJson(String json) {
    return ensureInitialized().decodeJson<Init>(json);
  }
}

mixin InitMappable {
  String toJson() {
    return InitMapper.ensureInitialized().encodeJson<Init>(this as Init);
  }

  Map<String, dynamic> toMap() {
    return InitMapper.ensureInitialized().encodeMap<Init>(this as Init);
  }

  InitCopyWith<Init, Init, Init> get copyWith =>
      _InitCopyWithImpl<Init, Init>(this as Init, $identity, $identity);
  @override
  String toString() {
    return InitMapper.ensureInitialized().stringifyValue(this as Init);
  }

  @override
  bool operator ==(Object other) {
    return InitMapper.ensureInitialized().equalsValue(this as Init, other);
  }

  @override
  int get hashCode {
    return InitMapper.ensureInitialized().hashValue(this as Init);
  }
}

extension InitValueCopy<$R, $Out> on ObjectCopyWith<$R, Init, $Out> {
  InitCopyWith<$R, Init, $Out> get $asInit =>
      $base.as((v, t, t2) => _InitCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InitCopyWith<$R, $In extends Init, $Out>
    implements CompareEventCopyWith<$R, $In, $Out> {
  PlayerCopyWith<$R, Player, Player> get player;
  @override
  $R call({Player? player});
  InitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InitCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Init, $Out>
    implements InitCopyWith<$R, Init, $Out> {
  _InitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Init> $mapper = InitMapper.ensureInitialized();
  @override
  PlayerCopyWith<$R, Player, Player> get player =>
      $value.player.copyWith.$chain((v) => call(player: v));
  @override
  $R call({Player? player}) =>
      $apply(FieldCopyWithData({if (player != null) #player: player}));
  @override
  Init $make(CopyWithData data) =>
      Init(player: data.get(#player, or: $value.player));

  @override
  InitCopyWith<$R2, Init, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _InitCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SelectPlayerMapper extends SubClassMapperBase<SelectPlayer> {
  SelectPlayerMapper._();

  static SelectPlayerMapper? _instance;
  static SelectPlayerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectPlayerMapper._());
      CompareEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SelectPlayer';

  static int _$index(SelectPlayer v) => v.index;
  static const Field<SelectPlayer, int> _f$index = Field('index', _$index);

  @override
  final MappableFields<SelectPlayer> fields = const {
    #index: _f$index,
  };

  @override
  final String discriminatorKey = 'compareEvent';
  @override
  final dynamic discriminatorValue = 'selectPlayer';
  @override
  late final ClassMapperBase superMapper =
      CompareEventMapper.ensureInitialized();

  static SelectPlayer _instantiate(DecodingData data) {
    return SelectPlayer(index: data.dec(_f$index));
  }

  @override
  final Function instantiate = _instantiate;

  static SelectPlayer fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SelectPlayer>(map);
  }

  static SelectPlayer fromJson(String json) {
    return ensureInitialized().decodeJson<SelectPlayer>(json);
  }
}

mixin SelectPlayerMappable {
  String toJson() {
    return SelectPlayerMapper.ensureInitialized()
        .encodeJson<SelectPlayer>(this as SelectPlayer);
  }

  Map<String, dynamic> toMap() {
    return SelectPlayerMapper.ensureInitialized()
        .encodeMap<SelectPlayer>(this as SelectPlayer);
  }

  SelectPlayerCopyWith<SelectPlayer, SelectPlayer, SelectPlayer> get copyWith =>
      _SelectPlayerCopyWithImpl<SelectPlayer, SelectPlayer>(
          this as SelectPlayer, $identity, $identity);
  @override
  String toString() {
    return SelectPlayerMapper.ensureInitialized()
        .stringifyValue(this as SelectPlayer);
  }

  @override
  bool operator ==(Object other) {
    return SelectPlayerMapper.ensureInitialized()
        .equalsValue(this as SelectPlayer, other);
  }

  @override
  int get hashCode {
    return SelectPlayerMapper.ensureInitialized()
        .hashValue(this as SelectPlayer);
  }
}

extension SelectPlayerValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SelectPlayer, $Out> {
  SelectPlayerCopyWith<$R, SelectPlayer, $Out> get $asSelectPlayer =>
      $base.as((v, t, t2) => _SelectPlayerCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SelectPlayerCopyWith<$R, $In extends SelectPlayer, $Out>
    implements CompareEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? index});
  SelectPlayerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SelectPlayerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SelectPlayer, $Out>
    implements SelectPlayerCopyWith<$R, SelectPlayer, $Out> {
  _SelectPlayerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SelectPlayer> $mapper =
      SelectPlayerMapper.ensureInitialized();
  @override
  $R call({int? index}) =>
      $apply(FieldCopyWithData({if (index != null) #index: index}));
  @override
  SelectPlayer $make(CopyWithData data) =>
      SelectPlayer(index: data.get(#index, or: $value.index));

  @override
  SelectPlayerCopyWith<$R2, SelectPlayer, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SelectPlayerCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SelectVersionMapper extends SubClassMapperBase<SelectVersion> {
  SelectVersionMapper._();

  static SelectVersionMapper? _instance;
  static SelectVersionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectVersionMapper._());
      CompareEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SelectVersion';

  static int _$index(SelectVersion v) => v.index;
  static const Field<SelectVersion, int> _f$index = Field('index', _$index);
  static int _$playerId(SelectVersion v) => v.playerId;
  static const Field<SelectVersion, int> _f$playerId =
      Field('playerId', _$playerId);
  static int _$versionId(SelectVersion v) => v.versionId;
  static const Field<SelectVersion, int> _f$versionId =
      Field('versionId', _$versionId);
  static String _$version(SelectVersion v) => v.version;
  static const Field<SelectVersion, String> _f$version =
      Field('version', _$version);

  @override
  final MappableFields<SelectVersion> fields = const {
    #index: _f$index,
    #playerId: _f$playerId,
    #versionId: _f$versionId,
    #version: _f$version,
  };

  @override
  final String discriminatorKey = 'compareEvent';
  @override
  final dynamic discriminatorValue = 'selectVersion';
  @override
  late final ClassMapperBase superMapper =
      CompareEventMapper.ensureInitialized();

  static SelectVersion _instantiate(DecodingData data) {
    return SelectVersion(
        index: data.dec(_f$index),
        playerId: data.dec(_f$playerId),
        versionId: data.dec(_f$versionId),
        version: data.dec(_f$version));
  }

  @override
  final Function instantiate = _instantiate;

  static SelectVersion fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SelectVersion>(map);
  }

  static SelectVersion fromJson(String json) {
    return ensureInitialized().decodeJson<SelectVersion>(json);
  }
}

mixin SelectVersionMappable {
  String toJson() {
    return SelectVersionMapper.ensureInitialized()
        .encodeJson<SelectVersion>(this as SelectVersion);
  }

  Map<String, dynamic> toMap() {
    return SelectVersionMapper.ensureInitialized()
        .encodeMap<SelectVersion>(this as SelectVersion);
  }

  SelectVersionCopyWith<SelectVersion, SelectVersion, SelectVersion>
      get copyWith => _SelectVersionCopyWithImpl<SelectVersion, SelectVersion>(
          this as SelectVersion, $identity, $identity);
  @override
  String toString() {
    return SelectVersionMapper.ensureInitialized()
        .stringifyValue(this as SelectVersion);
  }

  @override
  bool operator ==(Object other) {
    return SelectVersionMapper.ensureInitialized()
        .equalsValue(this as SelectVersion, other);
  }

  @override
  int get hashCode {
    return SelectVersionMapper.ensureInitialized()
        .hashValue(this as SelectVersion);
  }
}

extension SelectVersionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SelectVersion, $Out> {
  SelectVersionCopyWith<$R, SelectVersion, $Out> get $asSelectVersion =>
      $base.as((v, t, t2) => _SelectVersionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SelectVersionCopyWith<$R, $In extends SelectVersion, $Out>
    implements CompareEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? index, int? playerId, int? versionId, String? version});
  SelectVersionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SelectVersionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SelectVersion, $Out>
    implements SelectVersionCopyWith<$R, SelectVersion, $Out> {
  _SelectVersionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SelectVersion> $mapper =
      SelectVersionMapper.ensureInitialized();
  @override
  $R call({int? index, int? playerId, int? versionId, String? version}) =>
      $apply(FieldCopyWithData({
        if (index != null) #index: index,
        if (playerId != null) #playerId: playerId,
        if (versionId != null) #versionId: versionId,
        if (version != null) #version: version
      }));
  @override
  SelectVersion $make(CopyWithData data) => SelectVersion(
      index: data.get(#index, or: $value.index),
      playerId: data.get(#playerId, or: $value.playerId),
      versionId: data.get(#versionId, or: $value.versionId),
      version: data.get(#version, or: $value.version));

  @override
  SelectVersionCopyWith<$R2, SelectVersion, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SelectVersionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CompareStateMapper extends ClassMapperBase<CompareState> {
  CompareStateMapper._();

  static CompareStateMapper? _instance;
  static CompareStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompareStateMapper._());
      PlayerMapper.ensureInitialized();
      _t$_R0Mapper.ensureInitialized();
      _t$_R1Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CompareState';

  static Player? _$player1(CompareState v) => v.player1;
  static const Field<CompareState, Player> _f$player1 =
      Field('player1', _$player1, opt: true);
  static Player? _$player2(CompareState v) => v.player2;
  static const Field<CompareState, Player> _f$player2 =
      Field('player2', _$player2, opt: true);
  static List<_t$_R0<int, int, String>>? _$player1Versions(CompareState v) =>
      v.player1Versions;
  static const Field<CompareState, List<_t$_R0<int, int, String>>>
      _f$player1Versions =
      Field('player1Versions', _$player1Versions, opt: true);
  static _t$_R1<int, String>? _$selectedPlayer1Version(CompareState v) =>
      v.selectedPlayer1Version;
  static const Field<CompareState, _t$_R1<int, String>>
      _f$selectedPlayer1Version =
      Field('selectedPlayer1Version', _$selectedPlayer1Version, opt: true);
  static List<_t$_R0<int, int, String>>? _$player2Versions(CompareState v) =>
      v.player2Versions;
  static const Field<CompareState, List<_t$_R0<int, int, String>>>
      _f$player2Versions =
      Field('player2Versions', _$player2Versions, opt: true);
  static _t$_R1<int, String>? _$selectedPlayer2Version(CompareState v) =>
      v.selectedPlayer2Version;
  static const Field<CompareState, _t$_R1<int, String>>
      _f$selectedPlayer2Version =
      Field('selectedPlayer2Version', _$selectedPlayer2Version, opt: true);

  @override
  final MappableFields<CompareState> fields = const {
    #player1: _f$player1,
    #player2: _f$player2,
    #player1Versions: _f$player1Versions,
    #selectedPlayer1Version: _f$selectedPlayer1Version,
    #player2Versions: _f$player2Versions,
    #selectedPlayer2Version: _f$selectedPlayer2Version,
  };

  static CompareState _instantiate(DecodingData data) {
    return CompareState(
        player1: data.dec(_f$player1),
        player2: data.dec(_f$player2),
        player1Versions: data.dec(_f$player1Versions),
        selectedPlayer1Version: data.dec(_f$selectedPlayer1Version),
        player2Versions: data.dec(_f$player2Versions),
        selectedPlayer2Version: data.dec(_f$selectedPlayer2Version));
  }

  @override
  final Function instantiate = _instantiate;

  static CompareState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CompareState>(map);
  }

  static CompareState fromJson(String json) {
    return ensureInitialized().decodeJson<CompareState>(json);
  }
}

mixin CompareStateMappable {
  String toJson() {
    return CompareStateMapper.ensureInitialized()
        .encodeJson<CompareState>(this as CompareState);
  }

  Map<String, dynamic> toMap() {
    return CompareStateMapper.ensureInitialized()
        .encodeMap<CompareState>(this as CompareState);
  }

  CompareStateCopyWith<CompareState, CompareState, CompareState> get copyWith =>
      _CompareStateCopyWithImpl<CompareState, CompareState>(
          this as CompareState, $identity, $identity);
  @override
  String toString() {
    return CompareStateMapper.ensureInitialized()
        .stringifyValue(this as CompareState);
  }

  @override
  bool operator ==(Object other) {
    return CompareStateMapper.ensureInitialized()
        .equalsValue(this as CompareState, other);
  }

  @override
  int get hashCode {
    return CompareStateMapper.ensureInitialized()
        .hashValue(this as CompareState);
  }
}

extension CompareStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CompareState, $Out> {
  CompareStateCopyWith<$R, CompareState, $Out> get $asCompareState =>
      $base.as((v, t, t2) => _CompareStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CompareStateCopyWith<$R, $In extends CompareState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PlayerCopyWith<$R, Player, Player>? get player1;
  PlayerCopyWith<$R, Player, Player>? get player2;
  ListCopyWith<
      $R,
      _t$_R0<int, int, String>,
      ObjectCopyWith<$R, _t$_R0<int, int, String>,
          _t$_R0<int, int, String>>>? get player1Versions;
  ListCopyWith<
      $R,
      _t$_R0<int, int, String>,
      ObjectCopyWith<$R, _t$_R0<int, int, String>,
          _t$_R0<int, int, String>>>? get player2Versions;
  $R call(
      {Player? player1,
      Player? player2,
      List<_t$_R0<int, int, String>>? player1Versions,
      _t$_R1<int, String>? selectedPlayer1Version,
      List<_t$_R0<int, int, String>>? player2Versions,
      _t$_R1<int, String>? selectedPlayer2Version});
  CompareStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CompareStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CompareState, $Out>
    implements CompareStateCopyWith<$R, CompareState, $Out> {
  _CompareStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CompareState> $mapper =
      CompareStateMapper.ensureInitialized();
  @override
  PlayerCopyWith<$R, Player, Player>? get player1 =>
      $value.player1?.copyWith.$chain((v) => call(player1: v));
  @override
  PlayerCopyWith<$R, Player, Player>? get player2 =>
      $value.player2?.copyWith.$chain((v) => call(player2: v));
  @override
  ListCopyWith<
      $R,
      _t$_R0<int, int, String>,
      ObjectCopyWith<$R, _t$_R0<int, int, String>,
          _t$_R0<int, int, String>>>? get player1Versions =>
      $value.player1Versions != null
          ? ListCopyWith(
              $value.player1Versions!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(player1Versions: v))
          : null;
  @override
  ListCopyWith<
      $R,
      _t$_R0<int, int, String>,
      ObjectCopyWith<$R, _t$_R0<int, int, String>,
          _t$_R0<int, int, String>>>? get player2Versions =>
      $value.player2Versions != null
          ? ListCopyWith(
              $value.player2Versions!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(player2Versions: v))
          : null;
  @override
  $R call(
          {Object? player1 = $none,
          Object? player2 = $none,
          Object? player1Versions = $none,
          Object? selectedPlayer1Version = $none,
          Object? player2Versions = $none,
          Object? selectedPlayer2Version = $none}) =>
      $apply(FieldCopyWithData({
        if (player1 != $none) #player1: player1,
        if (player2 != $none) #player2: player2,
        if (player1Versions != $none) #player1Versions: player1Versions,
        if (selectedPlayer1Version != $none)
          #selectedPlayer1Version: selectedPlayer1Version,
        if (player2Versions != $none) #player2Versions: player2Versions,
        if (selectedPlayer2Version != $none)
          #selectedPlayer2Version: selectedPlayer2Version
      }));
  @override
  CompareState $make(CopyWithData data) => CompareState(
      player1: data.get(#player1, or: $value.player1),
      player2: data.get(#player2, or: $value.player2),
      player1Versions: data.get(#player1Versions, or: $value.player1Versions),
      selectedPlayer1Version:
          data.get(#selectedPlayer1Version, or: $value.selectedPlayer1Version),
      player2Versions: data.get(#player2Versions, or: $value.player2Versions),
      selectedPlayer2Version:
          data.get(#selectedPlayer2Version, or: $value.selectedPlayer2Version));

  @override
  CompareStateCopyWith<$R2, CompareState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CompareStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

typedef _t$_R1<A, B> = (A, B);

class _t$_R1Mapper extends RecordMapperBase<_t$_R1> {
  static _t$_R1Mapper? _instance;
  _t$_R1Mapper._();

  static _t$_R1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R1Mapper._());
      MapperBase.addType(<A, B>(f) => f<(A, B)>());
    }
    return _instance!;
  }

  static dynamic _$$1(_t$_R1 v) => v.$1;
  static dynamic _arg$$1<A, B>(f) => f<A>();
  static const Field<_t$_R1, dynamic> _f$$1 = Field('\$1', _$$1, arg: _arg$$1);
  static dynamic _$$2(_t$_R1 v) => v.$2;
  static dynamic _arg$$2<A, B>(f) => f<B>();
  static const Field<_t$_R1, dynamic> _f$$2 = Field('\$2', _$$2, arg: _arg$$2);

  @override
  final MappableFields<_t$_R1> fields = const {
    #$1: _f$$1,
    #$2: _f$$2,
  };

  @override
  Function get typeFactory => <A, B>(f) => f<_t$_R1<A, B>>();

  static _t$_R1<A, B> _instantiate<A, B>(DecodingData<_t$_R1> data) {
    return (data.dec(_f$$1), data.dec(_f$$2));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R1<A, B> fromMap<A, B>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R1<A, B>>(map);
  }

  static _t$_R1<A, B> fromJson<A, B>(String json) {
    return ensureInitialized().decodeJson<_t$_R1<A, B>>(json);
  }
}

typedef _t$_R0<A, B, C> = (A, B, C);

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A, B, C>(f) => f<(A, B, C)>());
    }
    return _instance!;
  }

  static dynamic _$$1(_t$_R0 v) => v.$1;
  static dynamic _arg$$1<A, B, C>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$$1 = Field('\$1', _$$1, arg: _arg$$1);
  static dynamic _$$2(_t$_R0 v) => v.$2;
  static dynamic _arg$$2<A, B, C>(f) => f<B>();
  static const Field<_t$_R0, dynamic> _f$$2 = Field('\$2', _$$2, arg: _arg$$2);
  static dynamic _$$3(_t$_R0 v) => v.$3;
  static dynamic _arg$$3<A, B, C>(f) => f<C>();
  static const Field<_t$_R0, dynamic> _f$$3 = Field('\$3', _$$3, arg: _arg$$3);

  @override
  final MappableFields<_t$_R0> fields = const {
    #$1: _f$$1,
    #$2: _f$$2,
    #$3: _f$$3,
  };

  @override
  Function get typeFactory => <A, B, C>(f) => f<_t$_R0<A, B, C>>();

  static _t$_R0<A, B, C> _instantiate<A, B, C>(DecodingData<_t$_R0> data) {
    return (data.dec(_f$$1), data.dec(_f$$2), data.dec(_f$$3));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A, B, C> fromMap<A, B, C>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A, B, C>>(map);
  }

  static _t$_R0<A, B, C> fromJson<A, B, C>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A, B, C>>(json);
  }
}
