import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'index_bloc.mapper.dart';
part 'index_event.dart';
part 'index_state.dart';

@injectable
class IndexBloc extends Bloc<IndexEvent, IndexState> {
  IndexBloc(
    @factoryParam this.indexType,
    this._getAllIndexDataUseCase,
  ) : super(IndexState()) {
    on<Init>((event, emit) => _onInit(emit));
    on<ChartHovered>((event, emit) => _onChartHovered(event, emit));

    add(Init());
  }

  final IndexType indexType;
  final GetAllIndexDataUseCase _getAllIndexDataUseCase;

  Future<void> _onInit(Emitter<IndexState> emit) async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    final result = await _getAllIndexDataUseCase(indexType: indexType);
    switch (result) {
      case Success(data: final indexes):
        _reset(indexes, emit);
      case Failure(exception: final e):
        {
          if (kDebugMode) {
            print(e);
          }
        }
    }
  }

  void _reset(List<IndexData> indexes, Emitter<IndexState> emit) {
    final values = switch (indexType) {
      IndexType.forwards => indexes.map((e) => e.forwards).toList(),
      IndexType.midfielders => indexes.map((e) => e.midfielders).toList(),
      IndexType.defenders => indexes.map((e) => e.defenders).toList(),
      IndexType.goalkeepers => indexes.map((e) => e.goalkeepers).toList(),
    };
    final sortedValues = values.sorted((a, b) => a.compareTo(b));
    final range = sortedValues.last - sortedValues.first;
    var interval = 200.0;
    if (range > 5000) {
      interval = 1000;
    } else if (range > 1000) {
      interval = 500;
    }
    final min = sortedValues.first;
    final max = sortedValues.last;

    emit(
      state.copyWith(
        processState: ProcessState.success,
        entries: indexes,
        min: min - interval,
        max: max + interval,
        interval: interval,
        previous: values[1],
        current: values.first,
        hoveredIndexData: null,
      ),
    );
  }

  void _onChartHovered(
    ChartHovered event,
    Emitter<IndexState> emit,
  ) {
    if (event.indexData == null) {
      _reset(state.entries!, emit);
      return;
    }

    final values = switch (indexType) {
      IndexType.forwards => event.indexData!.forwards,
      IndexType.midfielders => event.indexData!.midfielders,
      IndexType.defenders => event.indexData!.defenders,
      IndexType.goalkeepers => event.indexData!.goalkeepers,
    };
    final previous = state.current;
    emit(
      state.copyWith(
        hoveredIndexData: values,
        previous: previous,
      ),
    );
  }
}
