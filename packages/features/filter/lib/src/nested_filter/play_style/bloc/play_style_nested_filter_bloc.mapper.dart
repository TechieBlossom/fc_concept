// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'play_style_nested_filter_bloc.dart';

class PlayStyleNestedFilterEventMapper
    extends ClassMapperBase<PlayStyleNestedFilterEvent> {
  PlayStyleNestedFilterEventMapper._();

  static PlayStyleNestedFilterEventMapper? _instance;
  static PlayStyleNestedFilterEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PlayStyleNestedFilterEventMapper._());
      InitMapper.ensureInitialized();
      SelectPlayStyleMapper.ensureInitialized();
      DoneMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayStyleNestedFilterEvent';

  @override
  final MappableFields<PlayStyleNestedFilterEvent> fields = const {};

  static PlayStyleNestedFilterEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'PlayStyleNestedFilterEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static PlayStyleNestedFilterEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayStyleNestedFilterEvent>(map);
  }

  static PlayStyleNestedFilterEvent fromJson(String json) {
    return ensureInitialized().decodeJson<PlayStyleNestedFilterEvent>(json);
  }
}

mixin PlayStyleNestedFilterEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  PlayStyleNestedFilterEventCopyWith<PlayStyleNestedFilterEvent,
      PlayStyleNestedFilterEvent, PlayStyleNestedFilterEvent> get copyWith;
}

abstract class PlayStyleNestedFilterEventCopyWith<
    $R,
    $In extends PlayStyleNestedFilterEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  PlayStyleNestedFilterEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      PlayStyleNestedFilterEventMapper.ensureInitialized()
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
      PlayStyleNestedFilterEventMapper.ensureInitialized();

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
    implements PlayStyleNestedFilterEventCopyWith<$R, $In, $Out> {
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

class SelectPlayStyleMapper extends SubClassMapperBase<SelectPlayStyle> {
  SelectPlayStyleMapper._();

  static SelectPlayStyleMapper? _instance;
  static SelectPlayStyleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectPlayStyleMapper._());
      PlayStyleNestedFilterEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
      PlayStyleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SelectPlayStyle';

  static PlayStyle _$item(SelectPlayStyle v) => v.item;
  static const Field<SelectPlayStyle, PlayStyle> _f$item =
      Field('item', _$item);

  @override
  final MappableFields<SelectPlayStyle> fields = const {
    #item: _f$item,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'selectPlayStyle';
  @override
  late final ClassMapperBase superMapper =
      PlayStyleNestedFilterEventMapper.ensureInitialized();

  static SelectPlayStyle _instantiate(DecodingData data) {
    return SelectPlayStyle(item: data.dec(_f$item));
  }

  @override
  final Function instantiate = _instantiate;

  static SelectPlayStyle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SelectPlayStyle>(map);
  }

  static SelectPlayStyle fromJson(String json) {
    return ensureInitialized().decodeJson<SelectPlayStyle>(json);
  }
}

mixin SelectPlayStyleMappable {
  String toJson() {
    return SelectPlayStyleMapper.ensureInitialized()
        .encodeJson<SelectPlayStyle>(this as SelectPlayStyle);
  }

  Map<String, dynamic> toMap() {
    return SelectPlayStyleMapper.ensureInitialized()
        .encodeMap<SelectPlayStyle>(this as SelectPlayStyle);
  }

  SelectPlayStyleCopyWith<SelectPlayStyle, SelectPlayStyle, SelectPlayStyle>
      get copyWith => _SelectPlayStyleCopyWithImpl(
          this as SelectPlayStyle, $identity, $identity);
  @override
  String toString() {
    return SelectPlayStyleMapper.ensureInitialized()
        .stringifyValue(this as SelectPlayStyle);
  }

  @override
  bool operator ==(Object other) {
    return SelectPlayStyleMapper.ensureInitialized()
        .equalsValue(this as SelectPlayStyle, other);
  }

  @override
  int get hashCode {
    return SelectPlayStyleMapper.ensureInitialized()
        .hashValue(this as SelectPlayStyle);
  }
}

extension SelectPlayStyleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SelectPlayStyle, $Out> {
  SelectPlayStyleCopyWith<$R, SelectPlayStyle, $Out> get $asSelectPlayStyle =>
      $base.as((v, t, t2) => _SelectPlayStyleCopyWithImpl(v, t, t2));
}

abstract class SelectPlayStyleCopyWith<$R, $In extends SelectPlayStyle, $Out>
    implements PlayStyleNestedFilterEventCopyWith<$R, $In, $Out> {
  PlayStyleCopyWith<$R, PlayStyle, PlayStyle> get item;
  @override
  $R call({PlayStyle? item});
  SelectPlayStyleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SelectPlayStyleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SelectPlayStyle, $Out>
    implements SelectPlayStyleCopyWith<$R, SelectPlayStyle, $Out> {
  _SelectPlayStyleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SelectPlayStyle> $mapper =
      SelectPlayStyleMapper.ensureInitialized();
  @override
  PlayStyleCopyWith<$R, PlayStyle, PlayStyle> get item =>
      $value.item.copyWith.$chain((v) => call(item: v));
  @override
  $R call({PlayStyle? item}) =>
      $apply(FieldCopyWithData({if (item != null) #item: item}));
  @override
  SelectPlayStyle $make(CopyWithData data) =>
      SelectPlayStyle(item: data.get(#item, or: $value.item));

  @override
  SelectPlayStyleCopyWith<$R2, SelectPlayStyle, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SelectPlayStyleCopyWithImpl($value, $cast, t);
}

class DoneMapper extends SubClassMapperBase<Done> {
  DoneMapper._();

  static DoneMapper? _instance;
  static DoneMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DoneMapper._());
      PlayStyleNestedFilterEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Done';

  @override
  final MappableFields<Done> fields = const {};

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'done';
  @override
  late final ClassMapperBase superMapper =
      PlayStyleNestedFilterEventMapper.ensureInitialized();

  static Done _instantiate(DecodingData data) {
    return Done();
  }

  @override
  final Function instantiate = _instantiate;

  static Done fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Done>(map);
  }

  static Done fromJson(String json) {
    return ensureInitialized().decodeJson<Done>(json);
  }
}

mixin DoneMappable {
  String toJson() {
    return DoneMapper.ensureInitialized().encodeJson<Done>(this as Done);
  }

  Map<String, dynamic> toMap() {
    return DoneMapper.ensureInitialized().encodeMap<Done>(this as Done);
  }

  DoneCopyWith<Done, Done, Done> get copyWith =>
      _DoneCopyWithImpl(this as Done, $identity, $identity);
  @override
  String toString() {
    return DoneMapper.ensureInitialized().stringifyValue(this as Done);
  }

  @override
  bool operator ==(Object other) {
    return DoneMapper.ensureInitialized().equalsValue(this as Done, other);
  }

  @override
  int get hashCode {
    return DoneMapper.ensureInitialized().hashValue(this as Done);
  }
}

extension DoneValueCopy<$R, $Out> on ObjectCopyWith<$R, Done, $Out> {
  DoneCopyWith<$R, Done, $Out> get $asDone =>
      $base.as((v, t, t2) => _DoneCopyWithImpl(v, t, t2));
}

abstract class DoneCopyWith<$R, $In extends Done, $Out>
    implements PlayStyleNestedFilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  DoneCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DoneCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Done, $Out>
    implements DoneCopyWith<$R, Done, $Out> {
  _DoneCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Done> $mapper = DoneMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Done $make(CopyWithData data) => Done();

  @override
  DoneCopyWith<$R2, Done, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DoneCopyWithImpl($value, $cast, t);
}

class PlayStyleNestedFilterStateMapper
    extends ClassMapperBase<PlayStyleNestedFilterState> {
  PlayStyleNestedFilterStateMapper._();

  static PlayStyleNestedFilterStateMapper? _instance;
  static PlayStyleNestedFilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PlayStyleNestedFilterStateMapper._());
      ProcessStateMapper.ensureInitialized();
      PlayStyleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayStyleNestedFilterState';

  static ProcessState _$processState(PlayStyleNestedFilterState v) =>
      v.processState;
  static const Field<PlayStyleNestedFilterState, ProcessState> _f$processState =
      Field('processState', _$processState,
          opt: true, def: ProcessState.success);
  static PlayStyleNestedFilterPageParams? _$playStyleNestedFilterPageParams(
          PlayStyleNestedFilterState v) =>
      v.playStyleNestedFilterPageParams;
  static const Field<PlayStyleNestedFilterState,
          PlayStyleNestedFilterPageParams> _f$playStyleNestedFilterPageParams =
      Field(
          'playStyleNestedFilterPageParams', _$playStyleNestedFilterPageParams,
          opt: true);
  static List<PlayStyle>? _$playStyles(PlayStyleNestedFilterState v) =>
      v.playStyles;
  static const Field<PlayStyleNestedFilterState, List<PlayStyle>>
      _f$playStyles = Field('playStyles', _$playStyles, opt: true);
  static List<PlayStyle>? _$selectedPlayStyles(PlayStyleNestedFilterState v) =>
      v.selectedPlayStyles;
  static const Field<PlayStyleNestedFilterState, List<PlayStyle>>
      _f$selectedPlayStyles =
      Field('selectedPlayStyles', _$selectedPlayStyles, opt: true);

  @override
  final MappableFields<PlayStyleNestedFilterState> fields = const {
    #processState: _f$processState,
    #playStyleNestedFilterPageParams: _f$playStyleNestedFilterPageParams,
    #playStyles: _f$playStyles,
    #selectedPlayStyles: _f$selectedPlayStyles,
  };

  static PlayStyleNestedFilterState _instantiate(DecodingData data) {
    return PlayStyleNestedFilterState(
        processState: data.dec(_f$processState),
        playStyleNestedFilterPageParams:
            data.dec(_f$playStyleNestedFilterPageParams),
        playStyles: data.dec(_f$playStyles),
        selectedPlayStyles: data.dec(_f$selectedPlayStyles));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayStyleNestedFilterState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayStyleNestedFilterState>(map);
  }

  static PlayStyleNestedFilterState fromJson(String json) {
    return ensureInitialized().decodeJson<PlayStyleNestedFilterState>(json);
  }
}

mixin PlayStyleNestedFilterStateMappable {
  String toJson() {
    return PlayStyleNestedFilterStateMapper.ensureInitialized()
        .encodeJson<PlayStyleNestedFilterState>(
            this as PlayStyleNestedFilterState);
  }

  Map<String, dynamic> toMap() {
    return PlayStyleNestedFilterStateMapper.ensureInitialized()
        .encodeMap<PlayStyleNestedFilterState>(
            this as PlayStyleNestedFilterState);
  }

  PlayStyleNestedFilterStateCopyWith<PlayStyleNestedFilterState,
          PlayStyleNestedFilterState, PlayStyleNestedFilterState>
      get copyWith => _PlayStyleNestedFilterStateCopyWithImpl(
          this as PlayStyleNestedFilterState, $identity, $identity);
  @override
  String toString() {
    return PlayStyleNestedFilterStateMapper.ensureInitialized()
        .stringifyValue(this as PlayStyleNestedFilterState);
  }

  @override
  bool operator ==(Object other) {
    return PlayStyleNestedFilterStateMapper.ensureInitialized()
        .equalsValue(this as PlayStyleNestedFilterState, other);
  }

  @override
  int get hashCode {
    return PlayStyleNestedFilterStateMapper.ensureInitialized()
        .hashValue(this as PlayStyleNestedFilterState);
  }
}

extension PlayStyleNestedFilterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayStyleNestedFilterState, $Out> {
  PlayStyleNestedFilterStateCopyWith<$R, PlayStyleNestedFilterState, $Out>
      get $asPlayStyleNestedFilterState => $base
          .as((v, t, t2) => _PlayStyleNestedFilterStateCopyWithImpl(v, t, t2));
}

abstract class PlayStyleNestedFilterStateCopyWith<
    $R,
    $In extends PlayStyleNestedFilterState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>?
      get playStyles;
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>?
      get selectedPlayStyles;
  $R call(
      {ProcessState? processState,
      PlayStyleNestedFilterPageParams? playStyleNestedFilterPageParams,
      List<PlayStyle>? playStyles,
      List<PlayStyle>? selectedPlayStyles});
  PlayStyleNestedFilterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlayStyleNestedFilterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayStyleNestedFilterState, $Out>
    implements
        PlayStyleNestedFilterStateCopyWith<$R, PlayStyleNestedFilterState,
            $Out> {
  _PlayStyleNestedFilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayStyleNestedFilterState> $mapper =
      PlayStyleNestedFilterStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>?
      get playStyles => $value.playStyles != null
          ? ListCopyWith($value.playStyles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(playStyles: v))
          : null;
  @override
  ListCopyWith<$R, PlayStyle, PlayStyleCopyWith<$R, PlayStyle, PlayStyle>>?
      get selectedPlayStyles => $value.selectedPlayStyles != null
          ? ListCopyWith(
              $value.selectedPlayStyles!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(selectedPlayStyles: v))
          : null;
  @override
  $R call(
          {ProcessState? processState,
          Object? playStyleNestedFilterPageParams = $none,
          Object? playStyles = $none,
          Object? selectedPlayStyles = $none}) =>
      $apply(FieldCopyWithData({
        if (processState != null) #processState: processState,
        if (playStyleNestedFilterPageParams != $none)
          #playStyleNestedFilterPageParams: playStyleNestedFilterPageParams,
        if (playStyles != $none) #playStyles: playStyles,
        if (selectedPlayStyles != $none) #selectedPlayStyles: selectedPlayStyles
      }));
  @override
  PlayStyleNestedFilterState
      $make(CopyWithData data) =>
          PlayStyleNestedFilterState(
              processState: data.get(#processState, or: $value.processState),
              playStyleNestedFilterPageParams: data.get(
                  #playStyleNestedFilterPageParams,
                  or: $value.playStyleNestedFilterPageParams),
              playStyles: data.get(#playStyles, or: $value.playStyles),
              selectedPlayStyles:
                  data.get(#selectedPlayStyles, or: $value.selectedPlayStyles));

  @override
  PlayStyleNestedFilterStateCopyWith<$R2, PlayStyleNestedFilterState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlayStyleNestedFilterStateCopyWithImpl($value, $cast, t);
}
