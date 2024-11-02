// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'players_list_by_rating_bloc.dart';

class PlayersListByRatingEventMapper
    extends ClassMapperBase<PlayersListByRatingEvent> {
  PlayersListByRatingEventMapper._();

  static PlayersListByRatingEventMapper? _instance;
  static PlayersListByRatingEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PlayersListByRatingEventMapper._());
      InitMapper.ensureInitialized();
      ChangeRatingMapper.ensureInitialized();
      NextPageMapper.ensureInitialized();
      PlayerTapMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayersListByRatingEvent';

  @override
  final MappableFields<PlayersListByRatingEvent> fields = const {};

  static PlayersListByRatingEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'PlayersListByRatingEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static PlayersListByRatingEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayersListByRatingEvent>(map);
  }

  static PlayersListByRatingEvent fromJson(String json) {
    return ensureInitialized().decodeJson<PlayersListByRatingEvent>(json);
  }
}

mixin PlayersListByRatingEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  PlayersListByRatingEventCopyWith<PlayersListByRatingEvent,
      PlayersListByRatingEvent, PlayersListByRatingEvent> get copyWith;
}

abstract class PlayersListByRatingEventCopyWith<
    $R,
    $In extends PlayersListByRatingEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  PlayersListByRatingEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      PlayersListByRatingEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Init';

  @override
  final MappableFields<Init> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'init';
  @override
  late final ClassMapperBase superMapper =
      PlayersListByRatingEventMapper.ensureInitialized();

  static Init _instantiate(DecodingData data) {
    return Init();
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
      _InitCopyWithImpl(this as Init, $identity, $identity);
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
      $base.as((v, t, t2) => _InitCopyWithImpl(v, t, t2));
}

abstract class InitCopyWith<$R, $In extends Init, $Out>
    implements PlayersListByRatingEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  InitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InitCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Init, $Out>
    implements InitCopyWith<$R, Init, $Out> {
  _InitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Init> $mapper = InitMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Init $make(CopyWithData data) => Init();

  @override
  InitCopyWith<$R2, Init, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _InitCopyWithImpl($value, $cast, t);
}

class ChangeRatingMapper extends SubClassMapperBase<ChangeRating> {
  ChangeRatingMapper._();

  static ChangeRatingMapper? _instance;
  static ChangeRatingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChangeRatingMapper._());
      PlayersListByRatingEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ChangeRating';

  static int _$rating(ChangeRating v) => v.rating;
  static const Field<ChangeRating, int> _f$rating = Field('rating', _$rating);

  @override
  final MappableFields<ChangeRating> fields = const {
    #rating: _f$rating,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'ChangeRating';
  @override
  late final ClassMapperBase superMapper =
      PlayersListByRatingEventMapper.ensureInitialized();

  static ChangeRating _instantiate(DecodingData data) {
    return ChangeRating(rating: data.dec(_f$rating));
  }

  @override
  final Function instantiate = _instantiate;

  static ChangeRating fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChangeRating>(map);
  }

  static ChangeRating fromJson(String json) {
    return ensureInitialized().decodeJson<ChangeRating>(json);
  }
}

mixin ChangeRatingMappable {
  String toJson() {
    return ChangeRatingMapper.ensureInitialized()
        .encodeJson<ChangeRating>(this as ChangeRating);
  }

  Map<String, dynamic> toMap() {
    return ChangeRatingMapper.ensureInitialized()
        .encodeMap<ChangeRating>(this as ChangeRating);
  }

  ChangeRatingCopyWith<ChangeRating, ChangeRating, ChangeRating> get copyWith =>
      _ChangeRatingCopyWithImpl(this as ChangeRating, $identity, $identity);
  @override
  String toString() {
    return ChangeRatingMapper.ensureInitialized()
        .stringifyValue(this as ChangeRating);
  }

  @override
  bool operator ==(Object other) {
    return ChangeRatingMapper.ensureInitialized()
        .equalsValue(this as ChangeRating, other);
  }

  @override
  int get hashCode {
    return ChangeRatingMapper.ensureInitialized()
        .hashValue(this as ChangeRating);
  }
}

extension ChangeRatingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChangeRating, $Out> {
  ChangeRatingCopyWith<$R, ChangeRating, $Out> get $asChangeRating =>
      $base.as((v, t, t2) => _ChangeRatingCopyWithImpl(v, t, t2));
}

abstract class ChangeRatingCopyWith<$R, $In extends ChangeRating, $Out>
    implements PlayersListByRatingEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? rating});
  ChangeRatingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChangeRatingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChangeRating, $Out>
    implements ChangeRatingCopyWith<$R, ChangeRating, $Out> {
  _ChangeRatingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChangeRating> $mapper =
      ChangeRatingMapper.ensureInitialized();
  @override
  $R call({int? rating}) =>
      $apply(FieldCopyWithData({if (rating != null) #rating: rating}));
  @override
  ChangeRating $make(CopyWithData data) =>
      ChangeRating(rating: data.get(#rating, or: $value.rating));

  @override
  ChangeRatingCopyWith<$R2, ChangeRating, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChangeRatingCopyWithImpl($value, $cast, t);
}

class NextPageMapper extends SubClassMapperBase<NextPage> {
  NextPageMapper._();

  static NextPageMapper? _instance;
  static NextPageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NextPageMapper._());
      PlayersListByRatingEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NextPage';

  @override
  final MappableFields<NextPage> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'nextPage';
  @override
  late final ClassMapperBase superMapper =
      PlayersListByRatingEventMapper.ensureInitialized();

  static NextPage _instantiate(DecodingData data) {
    return NextPage();
  }

  @override
  final Function instantiate = _instantiate;

  static NextPage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NextPage>(map);
  }

  static NextPage fromJson(String json) {
    return ensureInitialized().decodeJson<NextPage>(json);
  }
}

mixin NextPageMappable {
  String toJson() {
    return NextPageMapper.ensureInitialized()
        .encodeJson<NextPage>(this as NextPage);
  }

  Map<String, dynamic> toMap() {
    return NextPageMapper.ensureInitialized()
        .encodeMap<NextPage>(this as NextPage);
  }

  NextPageCopyWith<NextPage, NextPage, NextPage> get copyWith =>
      _NextPageCopyWithImpl(this as NextPage, $identity, $identity);
  @override
  String toString() {
    return NextPageMapper.ensureInitialized().stringifyValue(this as NextPage);
  }

  @override
  bool operator ==(Object other) {
    return NextPageMapper.ensureInitialized()
        .equalsValue(this as NextPage, other);
  }

  @override
  int get hashCode {
    return NextPageMapper.ensureInitialized().hashValue(this as NextPage);
  }
}

extension NextPageValueCopy<$R, $Out> on ObjectCopyWith<$R, NextPage, $Out> {
  NextPageCopyWith<$R, NextPage, $Out> get $asNextPage =>
      $base.as((v, t, t2) => _NextPageCopyWithImpl(v, t, t2));
}

abstract class NextPageCopyWith<$R, $In extends NextPage, $Out>
    implements PlayersListByRatingEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  NextPageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NextPageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NextPage, $Out>
    implements NextPageCopyWith<$R, NextPage, $Out> {
  _NextPageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NextPage> $mapper =
      NextPageMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  NextPage $make(CopyWithData data) => NextPage();

  @override
  NextPageCopyWith<$R2, NextPage, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NextPageCopyWithImpl($value, $cast, t);
}

class PlayerTapMapper extends SubClassMapperBase<PlayerTap> {
  PlayerTapMapper._();

  static PlayerTapMapper? _instance;
  static PlayerTapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerTapMapper._());
      PlayersListByRatingEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
      PlayerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerTap';

  static Player _$player(PlayerTap v) => v.player;
  static const Field<PlayerTap, Player> _f$player = Field('player', _$player);

  @override
  final MappableFields<PlayerTap> fields = const {
    #player: _f$player,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'playerTap';
  @override
  late final ClassMapperBase superMapper =
      PlayersListByRatingEventMapper.ensureInitialized();

  static PlayerTap _instantiate(DecodingData data) {
    return PlayerTap(player: data.dec(_f$player));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerTap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerTap>(map);
  }

  static PlayerTap fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerTap>(json);
  }
}

mixin PlayerTapMappable {
  String toJson() {
    return PlayerTapMapper.ensureInitialized()
        .encodeJson<PlayerTap>(this as PlayerTap);
  }

  Map<String, dynamic> toMap() {
    return PlayerTapMapper.ensureInitialized()
        .encodeMap<PlayerTap>(this as PlayerTap);
  }

  PlayerTapCopyWith<PlayerTap, PlayerTap, PlayerTap> get copyWith =>
      _PlayerTapCopyWithImpl(this as PlayerTap, $identity, $identity);
  @override
  String toString() {
    return PlayerTapMapper.ensureInitialized()
        .stringifyValue(this as PlayerTap);
  }

  @override
  bool operator ==(Object other) {
    return PlayerTapMapper.ensureInitialized()
        .equalsValue(this as PlayerTap, other);
  }

  @override
  int get hashCode {
    return PlayerTapMapper.ensureInitialized().hashValue(this as PlayerTap);
  }
}

extension PlayerTapValueCopy<$R, $Out> on ObjectCopyWith<$R, PlayerTap, $Out> {
  PlayerTapCopyWith<$R, PlayerTap, $Out> get $asPlayerTap =>
      $base.as((v, t, t2) => _PlayerTapCopyWithImpl(v, t, t2));
}

abstract class PlayerTapCopyWith<$R, $In extends PlayerTap, $Out>
    implements PlayersListByRatingEventCopyWith<$R, $In, $Out> {
  PlayerCopyWith<$R, Player, Player> get player;
  @override
  $R call({Player? player});
  PlayerTapCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayerTapCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayerTap, $Out>
    implements PlayerTapCopyWith<$R, PlayerTap, $Out> {
  _PlayerTapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayerTap> $mapper =
      PlayerTapMapper.ensureInitialized();
  @override
  PlayerCopyWith<$R, Player, Player> get player =>
      $value.player.copyWith.$chain((v) => call(player: v));
  @override
  $R call({Player? player}) =>
      $apply(FieldCopyWithData({if (player != null) #player: player}));
  @override
  PlayerTap $make(CopyWithData data) =>
      PlayerTap(player: data.get(#player, or: $value.player));

  @override
  PlayerTapCopyWith<$R2, PlayerTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerTapCopyWithImpl($value, $cast, t);
}

class PlayersListByRatingStateMapper
    extends ClassMapperBase<PlayersListByRatingState> {
  PlayersListByRatingStateMapper._();

  static PlayersListByRatingStateMapper? _instance;
  static PlayersListByRatingStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PlayersListByRatingStateMapper._());
      ProcessStateMapper.ensureInitialized();
      PlayerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayersListByRatingState';

  static ProcessState _$processState(PlayersListByRatingState v) =>
      v.processState;
  static const Field<PlayersListByRatingState, ProcessState> _f$processState =
      Field('processState', _$processState,
          opt: true, def: ProcessState.loading);
  static int _$rating(PlayersListByRatingState v) => v.rating;
  static const Field<PlayersListByRatingState, int> _f$rating =
      Field('rating', _$rating, opt: true, def: 90);
  static List<Player> _$players(PlayersListByRatingState v) => v.players;
  static const Field<PlayersListByRatingState, List<Player>> _f$players =
      Field('players', _$players, opt: true, def: const <Player>[]);
  static int _$page(PlayersListByRatingState v) => v.page;
  static const Field<PlayersListByRatingState, int> _f$page =
      Field('page', _$page, opt: true, def: 0);
  static bool _$isPaginating(PlayersListByRatingState v) => v.isPaginating;
  static const Field<PlayersListByRatingState, bool> _f$isPaginating =
      Field('isPaginating', _$isPaginating, opt: true, def: false);
  static bool _$hasReachedEnd(PlayersListByRatingState v) => v.hasReachedEnd;
  static const Field<PlayersListByRatingState, bool> _f$hasReachedEnd =
      Field('hasReachedEnd', _$hasReachedEnd, opt: true, def: false);

  @override
  final MappableFields<PlayersListByRatingState> fields = const {
    #processState: _f$processState,
    #rating: _f$rating,
    #players: _f$players,
    #page: _f$page,
    #isPaginating: _f$isPaginating,
    #hasReachedEnd: _f$hasReachedEnd,
  };

  static PlayersListByRatingState _instantiate(DecodingData data) {
    return PlayersListByRatingState(
        processState: data.dec(_f$processState),
        rating: data.dec(_f$rating),
        players: data.dec(_f$players),
        page: data.dec(_f$page),
        isPaginating: data.dec(_f$isPaginating),
        hasReachedEnd: data.dec(_f$hasReachedEnd));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayersListByRatingState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayersListByRatingState>(map);
  }

  static PlayersListByRatingState fromJson(String json) {
    return ensureInitialized().decodeJson<PlayersListByRatingState>(json);
  }
}

mixin PlayersListByRatingStateMappable {
  String toJson() {
    return PlayersListByRatingStateMapper.ensureInitialized()
        .encodeJson<PlayersListByRatingState>(this as PlayersListByRatingState);
  }

  Map<String, dynamic> toMap() {
    return PlayersListByRatingStateMapper.ensureInitialized()
        .encodeMap<PlayersListByRatingState>(this as PlayersListByRatingState);
  }

  PlayersListByRatingStateCopyWith<PlayersListByRatingState,
          PlayersListByRatingState, PlayersListByRatingState>
      get copyWith => _PlayersListByRatingStateCopyWithImpl(
          this as PlayersListByRatingState, $identity, $identity);
  @override
  String toString() {
    return PlayersListByRatingStateMapper.ensureInitialized()
        .stringifyValue(this as PlayersListByRatingState);
  }

  @override
  bool operator ==(Object other) {
    return PlayersListByRatingStateMapper.ensureInitialized()
        .equalsValue(this as PlayersListByRatingState, other);
  }

  @override
  int get hashCode {
    return PlayersListByRatingStateMapper.ensureInitialized()
        .hashValue(this as PlayersListByRatingState);
  }
}

extension PlayersListByRatingStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayersListByRatingState, $Out> {
  PlayersListByRatingStateCopyWith<$R, PlayersListByRatingState, $Out>
      get $asPlayersListByRatingState => $base
          .as((v, t, t2) => _PlayersListByRatingStateCopyWithImpl(v, t, t2));
}

abstract class PlayersListByRatingStateCopyWith<
    $R,
    $In extends PlayersListByRatingState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>> get players;
  $R call(
      {ProcessState? processState,
      int? rating,
      List<Player>? players,
      int? page,
      bool? isPaginating,
      bool? hasReachedEnd});
  PlayersListByRatingStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlayersListByRatingStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayersListByRatingState, $Out>
    implements
        PlayersListByRatingStateCopyWith<$R, PlayersListByRatingState, $Out> {
  _PlayersListByRatingStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayersListByRatingState> $mapper =
      PlayersListByRatingStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>> get players =>
      ListCopyWith($value.players, (v, t) => v.copyWith.$chain(t),
          (v) => call(players: v));
  @override
  $R call(
          {ProcessState? processState,
          int? rating,
          List<Player>? players,
          int? page,
          bool? isPaginating,
          bool? hasReachedEnd}) =>
      $apply(FieldCopyWithData({
        if (processState != null) #processState: processState,
        if (rating != null) #rating: rating,
        if (players != null) #players: players,
        if (page != null) #page: page,
        if (isPaginating != null) #isPaginating: isPaginating,
        if (hasReachedEnd != null) #hasReachedEnd: hasReachedEnd
      }));
  @override
  PlayersListByRatingState $make(CopyWithData data) => PlayersListByRatingState(
      processState: data.get(#processState, or: $value.processState),
      rating: data.get(#rating, or: $value.rating),
      players: data.get(#players, or: $value.players),
      page: data.get(#page, or: $value.page),
      isPaginating: data.get(#isPaginating, or: $value.isPaginating),
      hasReachedEnd: data.get(#hasReachedEnd, or: $value.hasReachedEnd));

  @override
  PlayersListByRatingStateCopyWith<$R2, PlayersListByRatingState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlayersListByRatingStateCopyWithImpl($value, $cast, t);
}
