import 'dart:async';

import 'package:core_domain/domain.dart';
import 'package:core_domain/src/domain/positions/use_case/get_all_positions_use_case.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'metadata_bloc.mapper.dart';

part 'metadata_event.dart';

part 'metadata_state.dart';

@lazySingleton
class MetadataBloc extends Bloc<MetadataEvent, MetadataState> {
  MetadataBloc(
    this._getAllRolesUseCase,
    this._getAllPlayStylesUseCase,
    this._getAllPositionsUseCase,
  ) : super(MetadataState()) {
    on<Init>((event, emit) => _onInit(emit));

    add(Init());
  }

  final GetAllRolesUseCase _getAllRolesUseCase;
  final GetAllPlayStylesUseCase _getAllPlayStylesUseCase;
  final GetAllPositionsUseCase _getAllPositionsUseCase;

  Future<void> _onInit(Emitter<MetadataState> emit) async {
    final responses = await Future.wait([
      _getAllRolesUseCase(),
      _getAllPlayStylesUseCase(),
      _getAllPositionsUseCase(),
    ]);

    var allRoles = <Role>[];
    var allPlayStyles = <PlayStyle>[];
    var allPositions = <Position>[];

    final rolesResult = responses[0] as Result<List<Role>>;
    switch (rolesResult) {
      case Success(data: final roles):
        allRoles = roles;
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }

    final playStylesResult = responses[1] as Result<List<PlayStyle>>;
    switch (playStylesResult) {
      case Success(data: final playStyles):
        allPlayStyles = playStyles;
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }

    final positionsResult = responses[2] as Result<List<Position>>;
    switch (positionsResult) {
      case Success(data: final positions):
        allPositions = positions;
      case Failure(exception: final exception):
        if (kDebugMode) {
          print(exception);
        }
    }

    emit(
      state.copyWith(
        roles: allRoles,
        playStyles: allPlayStyles,
        positions: allPositions,
      ),
    );
  }
}
