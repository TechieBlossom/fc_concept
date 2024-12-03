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

    add(Init());
  }

  final IndexType indexType;
  final GetAllIndexDataUseCase _getAllIndexDataUseCase;

  Future<void> _onInit(Emitter<IndexState> emit) async {
    final result = await _getAllIndexDataUseCase(indexType: indexType);
    switch (result) {
      case Success(data: final indexes):
        {
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
              values: values,
              min: min - interval,
              max: max + interval,
              interval: interval,
            ),
          );
        }
      case Failure(exception: final e):
        {
          if (kDebugMode) {
            print(e);
          }
        }
    }
  }
}
