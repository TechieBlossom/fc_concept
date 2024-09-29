import 'dart:async';

import 'package:core_domain/domain.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'roles_bloc.mapper.dart';
part 'roles_event.dart';
part 'roles_state.dart';

@lazySingleton
class RolesBloc extends Bloc<RolesEvent, RolesState> {
  RolesBloc(
    this._getAllRolesUseCase,
  ) : super(RolesState()) {
    on<Init>((event, emit) => _onInit(emit));

    add(Init());
  }

  final GetAllRolesUseCase _getAllRolesUseCase;

  Future<void> _onInit(Emitter<RolesState> emit) async {
    await _getAllRolesUseCase().then((result) {
      switch (result) {
        case Success(data: final roles):
          emit(state.copyWith(roles: roles));
        case Failure(exception: final exception):
          if (kDebugMode) {
            print(exception);
          }
      }
    });
  }
}
