import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_bloc.mapper.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(this._getIndexDataUseCase) : super(DashboardState()) {
    on<Init>((event, emit) => _onInit(emit));

    add(Init());
  }

  final GetIndexDataUseCase _getIndexDataUseCase;

  Future<void> _onInit(Emitter<DashboardState> emit) async {
    final indexesResult = await _getIndexDataUseCase();
    switch (indexesResult) {
      case Success(data: final indexes):
        emit(state.copyWith(indexes: indexes));
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }
  }
}
