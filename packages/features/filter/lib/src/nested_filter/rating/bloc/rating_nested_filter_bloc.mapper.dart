// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rating_nested_filter_bloc.dart';

class RatingNestedFilterEventMapper
    extends ClassMapperBase<RatingNestedFilterEvent> {
  RatingNestedFilterEventMapper._();

  static RatingNestedFilterEventMapper? _instance;
  static RatingNestedFilterEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = RatingNestedFilterEventMapper._());
      InitMapper.ensureInitialized();
      SelectRatingMapper.ensureInitialized();
      DoneMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RatingNestedFilterEvent';

  @override
  final MappableFields<RatingNestedFilterEvent> fields = const {};

  static RatingNestedFilterEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'RatingNestedFilterEvent', 'event', '${data.value['event']}');
  }

  @override
  final Function instantiate = _instantiate;

  static RatingNestedFilterEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RatingNestedFilterEvent>(map);
  }

  static RatingNestedFilterEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RatingNestedFilterEvent>(json);
  }
}

mixin RatingNestedFilterEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RatingNestedFilterEventCopyWith<RatingNestedFilterEvent,
      RatingNestedFilterEvent, RatingNestedFilterEvent> get copyWith;
}

abstract class RatingNestedFilterEventCopyWith<
    $R,
    $In extends RatingNestedFilterEvent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  RatingNestedFilterEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class InitMapper extends SubClassMapperBase<Init> {
  InitMapper._();

  static InitMapper? _instance;
  static InitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitMapper._());
      RatingNestedFilterEventMapper.ensureInitialized()
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
      RatingNestedFilterEventMapper.ensureInitialized();

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
    implements RatingNestedFilterEventCopyWith<$R, $In, $Out> {
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

class SelectRatingMapper extends SubClassMapperBase<SelectRating> {
  SelectRatingMapper._();

  static SelectRatingMapper? _instance;
  static SelectRatingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectRatingMapper._());
      RatingNestedFilterEventMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SelectRating';

  static int _$item(SelectRating v) => v.item;
  static const Field<SelectRating, int> _f$item = Field('item', _$item);

  @override
  final MappableFields<SelectRating> fields = const {
    #item: _f$item,
  };

  @override
  final String discriminatorKey = 'event';
  @override
  final dynamic discriminatorValue = 'selectRating';
  @override
  late final ClassMapperBase superMapper =
      RatingNestedFilterEventMapper.ensureInitialized();

  static SelectRating _instantiate(DecodingData data) {
    return SelectRating(item: data.dec(_f$item));
  }

  @override
  final Function instantiate = _instantiate;

  static SelectRating fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SelectRating>(map);
  }

  static SelectRating fromJson(String json) {
    return ensureInitialized().decodeJson<SelectRating>(json);
  }
}

mixin SelectRatingMappable {
  String toJson() {
    return SelectRatingMapper.ensureInitialized()
        .encodeJson<SelectRating>(this as SelectRating);
  }

  Map<String, dynamic> toMap() {
    return SelectRatingMapper.ensureInitialized()
        .encodeMap<SelectRating>(this as SelectRating);
  }

  SelectRatingCopyWith<SelectRating, SelectRating, SelectRating> get copyWith =>
      _SelectRatingCopyWithImpl(this as SelectRating, $identity, $identity);
  @override
  String toString() {
    return SelectRatingMapper.ensureInitialized()
        .stringifyValue(this as SelectRating);
  }

  @override
  bool operator ==(Object other) {
    return SelectRatingMapper.ensureInitialized()
        .equalsValue(this as SelectRating, other);
  }

  @override
  int get hashCode {
    return SelectRatingMapper.ensureInitialized()
        .hashValue(this as SelectRating);
  }
}

extension SelectRatingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SelectRating, $Out> {
  SelectRatingCopyWith<$R, SelectRating, $Out> get $asSelectRating =>
      $base.as((v, t, t2) => _SelectRatingCopyWithImpl(v, t, t2));
}

abstract class SelectRatingCopyWith<$R, $In extends SelectRating, $Out>
    implements RatingNestedFilterEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? item});
  SelectRatingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SelectRatingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SelectRating, $Out>
    implements SelectRatingCopyWith<$R, SelectRating, $Out> {
  _SelectRatingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SelectRating> $mapper =
      SelectRatingMapper.ensureInitialized();
  @override
  $R call({int? item}) =>
      $apply(FieldCopyWithData({if (item != null) #item: item}));
  @override
  SelectRating $make(CopyWithData data) =>
      SelectRating(item: data.get(#item, or: $value.item));

  @override
  SelectRatingCopyWith<$R2, SelectRating, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SelectRatingCopyWithImpl($value, $cast, t);
}

class DoneMapper extends SubClassMapperBase<Done> {
  DoneMapper._();

  static DoneMapper? _instance;
  static DoneMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DoneMapper._());
      RatingNestedFilterEventMapper.ensureInitialized()
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
      RatingNestedFilterEventMapper.ensureInitialized();

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
    implements RatingNestedFilterEventCopyWith<$R, $In, $Out> {
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

class RatingNestedFilterStateMapper
    extends ClassMapperBase<RatingNestedFilterState> {
  RatingNestedFilterStateMapper._();

  static RatingNestedFilterStateMapper? _instance;
  static RatingNestedFilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = RatingNestedFilterStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RatingNestedFilterState';

  static ProcessState _$processState(RatingNestedFilterState v) =>
      v.processState;
  static const Field<RatingNestedFilterState, ProcessState> _f$processState =
      Field('processState', _$processState,
          opt: true, def: ProcessState.loading);
  static RatingNestedFilterPageParams? _$ratingNestedFilterPageParams(
          RatingNestedFilterState v) =>
      v.ratingNestedFilterPageParams;
  static const Field<RatingNestedFilterState, RatingNestedFilterPageParams>
      _f$ratingNestedFilterPageParams = Field(
          'ratingNestedFilterPageParams', _$ratingNestedFilterPageParams,
          opt: true);
  static List<int>? _$ratings(RatingNestedFilterState v) => v.ratings;
  static const Field<RatingNestedFilterState, List<int>> _f$ratings =
      Field('ratings', _$ratings, opt: true);
  static List<int>? _$selectedRatings(RatingNestedFilterState v) =>
      v.selectedRatings;
  static const Field<RatingNestedFilterState, List<int>> _f$selectedRatings =
      Field('selectedRatings', _$selectedRatings, opt: true);

  @override
  final MappableFields<RatingNestedFilterState> fields = const {
    #processState: _f$processState,
    #ratingNestedFilterPageParams: _f$ratingNestedFilterPageParams,
    #ratings: _f$ratings,
    #selectedRatings: _f$selectedRatings,
  };

  static RatingNestedFilterState _instantiate(DecodingData data) {
    return RatingNestedFilterState(
        processState: data.dec(_f$processState),
        ratingNestedFilterPageParams: data.dec(_f$ratingNestedFilterPageParams),
        ratings: data.dec(_f$ratings),
        selectedRatings: data.dec(_f$selectedRatings));
  }

  @override
  final Function instantiate = _instantiate;

  static RatingNestedFilterState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RatingNestedFilterState>(map);
  }

  static RatingNestedFilterState fromJson(String json) {
    return ensureInitialized().decodeJson<RatingNestedFilterState>(json);
  }
}

mixin RatingNestedFilterStateMappable {
  String toJson() {
    return RatingNestedFilterStateMapper.ensureInitialized()
        .encodeJson<RatingNestedFilterState>(this as RatingNestedFilterState);
  }

  Map<String, dynamic> toMap() {
    return RatingNestedFilterStateMapper.ensureInitialized()
        .encodeMap<RatingNestedFilterState>(this as RatingNestedFilterState);
  }

  RatingNestedFilterStateCopyWith<RatingNestedFilterState,
          RatingNestedFilterState, RatingNestedFilterState>
      get copyWith => _RatingNestedFilterStateCopyWithImpl(
          this as RatingNestedFilterState, $identity, $identity);
  @override
  String toString() {
    return RatingNestedFilterStateMapper.ensureInitialized()
        .stringifyValue(this as RatingNestedFilterState);
  }

  @override
  bool operator ==(Object other) {
    return RatingNestedFilterStateMapper.ensureInitialized()
        .equalsValue(this as RatingNestedFilterState, other);
  }

  @override
  int get hashCode {
    return RatingNestedFilterStateMapper.ensureInitialized()
        .hashValue(this as RatingNestedFilterState);
  }
}

extension RatingNestedFilterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RatingNestedFilterState, $Out> {
  RatingNestedFilterStateCopyWith<$R, RatingNestedFilterState, $Out>
      get $asRatingNestedFilterState => $base
          .as((v, t, t2) => _RatingNestedFilterStateCopyWithImpl(v, t, t2));
}

abstract class RatingNestedFilterStateCopyWith<
    $R,
    $In extends RatingNestedFilterState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get ratings;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get selectedRatings;
  $R call(
      {ProcessState? processState,
      RatingNestedFilterPageParams? ratingNestedFilterPageParams,
      List<int>? ratings,
      List<int>? selectedRatings});
  RatingNestedFilterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RatingNestedFilterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RatingNestedFilterState, $Out>
    implements
        RatingNestedFilterStateCopyWith<$R, RatingNestedFilterState, $Out> {
  _RatingNestedFilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RatingNestedFilterState> $mapper =
      RatingNestedFilterStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get ratings =>
      $value.ratings != null
          ? ListCopyWith(
              $value.ratings!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(ratings: v))
          : null;
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get selectedRatings =>
      $value.selectedRatings != null
          ? ListCopyWith(
              $value.selectedRatings!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(selectedRatings: v))
          : null;
  @override
  $R call(
          {ProcessState? processState,
          Object? ratingNestedFilterPageParams = $none,
          Object? ratings = $none,
          Object? selectedRatings = $none}) =>
      $apply(FieldCopyWithData({
        if (processState != null) #processState: processState,
        if (ratingNestedFilterPageParams != $none)
          #ratingNestedFilterPageParams: ratingNestedFilterPageParams,
        if (ratings != $none) #ratings: ratings,
        if (selectedRatings != $none) #selectedRatings: selectedRatings
      }));
  @override
  RatingNestedFilterState $make(CopyWithData data) => RatingNestedFilterState(
      processState: data.get(#processState, or: $value.processState),
      ratingNestedFilterPageParams: data.get(#ratingNestedFilterPageParams,
          or: $value.ratingNestedFilterPageParams),
      ratings: data.get(#ratings, or: $value.ratings),
      selectedRatings: data.get(#selectedRatings, or: $value.selectedRatings));

  @override
  RatingNestedFilterStateCopyWith<$R2, RatingNestedFilterState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RatingNestedFilterStateCopyWithImpl($value, $cast, t);
}
