// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'player_collection_bloc.dart';

class PlayerCollectionEventMapper
    extends ClassMapperBase<PlayerCollectionEvent> {
  PlayerCollectionEventMapper._();

  static PlayerCollectionEventMapper? _instance;
  static PlayerCollectionEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerCollectionEventMapper._());
      InitMapper.ensureInitialized();
      SearchMapper.ensureInitialized();
      NextPageMapper.ensureInitialized();
      PlayerTapMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerCollectionEvent';

  @override
  final MappableFields<PlayerCollectionEvent> fields = const {};

  static PlayerCollectionEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass('PlayerCollectionEvent',
        'playerCollectionEvent', '${data.value['playerCollectionEvent']}');
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerCollectionEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerCollectionEvent>(map);
  }

  static PlayerCollectionEvent fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerCollectionEvent>(json);
  }
}

mixin PlayerCollectionEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  PlayerCollectionEventCopyWith<PlayerCollectionEvent, PlayerCollectionEvent,
      PlayerCollectionEvent> get copyWith;
}

abstract class PlayerCollectionEventCopyWith<
    $R,
    $In extends PlayerCollectionEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  PlayerCollectionEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      PlayerCollectionEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Init';

  @override
  final MappableFields<Init> fields = const {};

  @override
  final String discriminatorKey = 'playerCollectionEvent';
  @override
  final dynamic discriminatorValue = 'init';
  @override
  late final ClassMapperBase superMapper =
      PlayerCollectionEventMapper.ensureInitialized();

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
    implements PlayerCollectionEventCopyWith<$R, $In, $Out> {
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

class SearchMapper extends SubClassMapperBase<Search> {
  SearchMapper._();

  static SearchMapper? _instance;
  static SearchMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchMapper._());
      PlayerCollectionEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Search';

  static String _$query(Search v) => v.query;
  static const Field<Search, String> _f$query = Field('query', _$query);

  @override
  final MappableFields<Search> fields = const {
    #query: _f$query,
  };

  @override
  final String discriminatorKey = 'playerCollectionEvent';
  @override
  final dynamic discriminatorValue = 'search';
  @override
  late final ClassMapperBase superMapper =
      PlayerCollectionEventMapper.ensureInitialized();

  static Search _instantiate(DecodingData data) {
    return Search(query: data.dec(_f$query));
  }

  @override
  final Function instantiate = _instantiate;

  static Search fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Search>(map);
  }

  static Search fromJson(String json) {
    return ensureInitialized().decodeJson<Search>(json);
  }
}

mixin SearchMappable {
  String toJson() {
    return SearchMapper.ensureInitialized().encodeJson<Search>(this as Search);
  }

  Map<String, dynamic> toMap() {
    return SearchMapper.ensureInitialized().encodeMap<Search>(this as Search);
  }

  SearchCopyWith<Search, Search, Search> get copyWith =>
      _SearchCopyWithImpl(this as Search, $identity, $identity);
  @override
  String toString() {
    return SearchMapper.ensureInitialized().stringifyValue(this as Search);
  }

  @override
  bool operator ==(Object other) {
    return SearchMapper.ensureInitialized().equalsValue(this as Search, other);
  }

  @override
  int get hashCode {
    return SearchMapper.ensureInitialized().hashValue(this as Search);
  }
}

extension SearchValueCopy<$R, $Out> on ObjectCopyWith<$R, Search, $Out> {
  SearchCopyWith<$R, Search, $Out> get $asSearch =>
      $base.as((v, t, t2) => _SearchCopyWithImpl(v, t, t2));
}

abstract class SearchCopyWith<$R, $In extends Search, $Out>
    implements PlayerCollectionEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? query});
  SearchCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SearchCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Search, $Out>
    implements SearchCopyWith<$R, Search, $Out> {
  _SearchCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Search> $mapper = SearchMapper.ensureInitialized();
  @override
  $R call({String? query}) =>
      $apply(FieldCopyWithData({if (query != null) #query: query}));
  @override
  Search $make(CopyWithData data) =>
      Search(query: data.get(#query, or: $value.query));

  @override
  SearchCopyWith<$R2, Search, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SearchCopyWithImpl($value, $cast, t);
}

class NextPageMapper extends SubClassMapperBase<NextPage> {
  NextPageMapper._();

  static NextPageMapper? _instance;
  static NextPageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NextPageMapper._());
      PlayerCollectionEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NextPage';

  @override
  final MappableFields<NextPage> fields = const {};

  @override
  final String discriminatorKey = 'playerCollectionEvent';
  @override
  final dynamic discriminatorValue = 'nextPage';
  @override
  late final ClassMapperBase superMapper =
      PlayerCollectionEventMapper.ensureInitialized();

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
    implements PlayerCollectionEventCopyWith<$R, $In, $Out> {
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
      PlayerCollectionEventMapper.ensureInitialized().addSubMapper(_instance!);
      PlayerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerTap';

  static Player _$player(PlayerTap v) => v.player;
  static const Field<PlayerTap, Player> _f$player = Field('player', _$player);
  static bool _$resultWithSelection(PlayerTap v) => v.resultWithSelection;
  static const Field<PlayerTap, bool> _f$resultWithSelection =
      Field('resultWithSelection', _$resultWithSelection);

  @override
  final MappableFields<PlayerTap> fields = const {
    #player: _f$player,
    #resultWithSelection: _f$resultWithSelection,
  };

  @override
  final String discriminatorKey = 'playerCollectionEvent';
  @override
  final dynamic discriminatorValue = 'playerTap';
  @override
  late final ClassMapperBase superMapper =
      PlayerCollectionEventMapper.ensureInitialized();

  static PlayerTap _instantiate(DecodingData data) {
    return PlayerTap(
        player: data.dec(_f$player),
        resultWithSelection: data.dec(_f$resultWithSelection));
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
    implements PlayerCollectionEventCopyWith<$R, $In, $Out> {
  PlayerCopyWith<$R, Player, Player> get player;
  @override
  $R call({Player? player, bool? resultWithSelection});
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
  $R call({Player? player, bool? resultWithSelection}) =>
      $apply(FieldCopyWithData({
        if (player != null) #player: player,
        if (resultWithSelection != null)
          #resultWithSelection: resultWithSelection
      }));
  @override
  PlayerTap $make(CopyWithData data) => PlayerTap(
      player: data.get(#player, or: $value.player),
      resultWithSelection:
          data.get(#resultWithSelection, or: $value.resultWithSelection));

  @override
  PlayerTapCopyWith<$R2, PlayerTap, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerTapCopyWithImpl($value, $cast, t);
}

class PlayerCollectionStateMapper
    extends ClassMapperBase<PlayerCollectionState> {
  PlayerCollectionStateMapper._();

  static PlayerCollectionStateMapper? _instance;
  static PlayerCollectionStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerCollectionStateMapper._());
      ProcessStateMapper.ensureInitialized();
      PlayerMapper.ensureInitialized();
      FilterConfigurationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerCollectionState';

  static dynamic _$data(PlayerCollectionState v) => v.data;
  static const Field<PlayerCollectionState, dynamic> _f$data =
      Field('data', _$data);
  static ProcessState _$processState(PlayerCollectionState v) => v.processState;
  static const Field<PlayerCollectionState, ProcessState> _f$processState =
      Field('processState', _$processState,
          opt: true, def: ProcessState.loading);
  static bool _$isPaginating(PlayerCollectionState v) => v.isPaginating;
  static const Field<PlayerCollectionState, bool> _f$isPaginating =
      Field('isPaginating', _$isPaginating, opt: true, def: false);
  static bool _$hasReachedEnd(PlayerCollectionState v) => v.hasReachedEnd;
  static const Field<PlayerCollectionState, bool> _f$hasReachedEnd =
      Field('hasReachedEnd', _$hasReachedEnd, opt: true, def: false);
  static int _$page(PlayerCollectionState v) => v.page;
  static const Field<PlayerCollectionState, int> _f$page =
      Field('page', _$page, opt: true, def: 0);
  static List<Player>? _$players(PlayerCollectionState v) => v.players;
  static const Field<PlayerCollectionState, List<Player>> _f$players =
      Field('players', _$players, opt: true);
  static FilterConfiguration? _$filterConfiguration(PlayerCollectionState v) =>
      v.filterConfiguration;
  static const Field<PlayerCollectionState, FilterConfiguration>
      _f$filterConfiguration =
      Field('filterConfiguration', _$filterConfiguration, opt: true);

  @override
  final MappableFields<PlayerCollectionState> fields = const {
    #data: _f$data,
    #processState: _f$processState,
    #isPaginating: _f$isPaginating,
    #hasReachedEnd: _f$hasReachedEnd,
    #page: _f$page,
    #players: _f$players,
    #filterConfiguration: _f$filterConfiguration,
  };

  static PlayerCollectionState _instantiate(DecodingData data) {
    return PlayerCollectionState(
        data: data.dec(_f$data),
        processState: data.dec(_f$processState),
        isPaginating: data.dec(_f$isPaginating),
        hasReachedEnd: data.dec(_f$hasReachedEnd),
        page: data.dec(_f$page),
        players: data.dec(_f$players),
        filterConfiguration: data.dec(_f$filterConfiguration));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerCollectionState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerCollectionState>(map);
  }

  static PlayerCollectionState fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerCollectionState>(json);
  }
}

mixin PlayerCollectionStateMappable {
  String toJson() {
    return PlayerCollectionStateMapper.ensureInitialized()
        .encodeJson<PlayerCollectionState>(this as PlayerCollectionState);
  }

  Map<String, dynamic> toMap() {
    return PlayerCollectionStateMapper.ensureInitialized()
        .encodeMap<PlayerCollectionState>(this as PlayerCollectionState);
  }

  PlayerCollectionStateCopyWith<PlayerCollectionState, PlayerCollectionState,
          PlayerCollectionState>
      get copyWith => _PlayerCollectionStateCopyWithImpl(
          this as PlayerCollectionState, $identity, $identity);
  @override
  String toString() {
    return PlayerCollectionStateMapper.ensureInitialized()
        .stringifyValue(this as PlayerCollectionState);
  }

  @override
  bool operator ==(Object other) {
    return PlayerCollectionStateMapper.ensureInitialized()
        .equalsValue(this as PlayerCollectionState, other);
  }

  @override
  int get hashCode {
    return PlayerCollectionStateMapper.ensureInitialized()
        .hashValue(this as PlayerCollectionState);
  }
}

extension PlayerCollectionStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayerCollectionState, $Out> {
  PlayerCollectionStateCopyWith<$R, PlayerCollectionState, $Out>
      get $asPlayerCollectionState =>
          $base.as((v, t, t2) => _PlayerCollectionStateCopyWithImpl(v, t, t2));
}

abstract class PlayerCollectionStateCopyWith<
    $R,
    $In extends PlayerCollectionState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>? get players;
  FilterConfigurationCopyWith<$R, FilterConfiguration, FilterConfiguration>?
      get filterConfiguration;
  $R call(
      {dynamic data,
      ProcessState? processState,
      bool? isPaginating,
      bool? hasReachedEnd,
      int? page,
      List<Player>? players,
      FilterConfiguration? filterConfiguration});
  PlayerCollectionStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlayerCollectionStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayerCollectionState, $Out>
    implements PlayerCollectionStateCopyWith<$R, PlayerCollectionState, $Out> {
  _PlayerCollectionStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayerCollectionState> $mapper =
      PlayerCollectionStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Player, PlayerCopyWith<$R, Player, Player>>? get players =>
      $value.players != null
          ? ListCopyWith($value.players!, (v, t) => v.copyWith.$chain(t),
              (v) => call(players: v))
          : null;
  @override
  FilterConfigurationCopyWith<$R, FilterConfiguration, FilterConfiguration>?
      get filterConfiguration => $value.filterConfiguration?.copyWith
          .$chain((v) => call(filterConfiguration: v));
  @override
  $R call(
          {Object? data = $none,
          ProcessState? processState,
          bool? isPaginating,
          bool? hasReachedEnd,
          int? page,
          Object? players = $none,
          Object? filterConfiguration = $none}) =>
      $apply(FieldCopyWithData({
        if (data != $none) #data: data,
        if (processState != null) #processState: processState,
        if (isPaginating != null) #isPaginating: isPaginating,
        if (hasReachedEnd != null) #hasReachedEnd: hasReachedEnd,
        if (page != null) #page: page,
        if (players != $none) #players: players,
        if (filterConfiguration != $none)
          #filterConfiguration: filterConfiguration
      }));
  @override
  PlayerCollectionState $make(CopyWithData data) => PlayerCollectionState(
      data: data.get(#data, or: $value.data),
      processState: data.get(#processState, or: $value.processState),
      isPaginating: data.get(#isPaginating, or: $value.isPaginating),
      hasReachedEnd: data.get(#hasReachedEnd, or: $value.hasReachedEnd),
      page: data.get(#page, or: $value.page),
      players: data.get(#players, or: $value.players),
      filterConfiguration:
          data.get(#filterConfiguration, or: $value.filterConfiguration));

  @override
  PlayerCollectionStateCopyWith<$R2, PlayerCollectionState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlayerCollectionStateCopyWithImpl($value, $cast, t);
}
