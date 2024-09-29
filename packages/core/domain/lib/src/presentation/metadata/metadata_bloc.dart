import 'dart:async';

import 'package:core_domain/domain.dart';
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
  ) : super(MetadataState()) {
    on<Init>((event, emit) => _onInit(emit));

    add(Init());
  }

  final GetAllRolesUseCase _getAllRolesUseCase;
  final GetAllPlayStylesUseCase _getAllPlayStylesUseCase;

  Future<void> _onInit(Emitter<MetadataState> emit) async {
    final responses = await Future.wait([
      _getAllRolesUseCase(),
      _getAllPlayStylesUseCase(),
    ]);

    var allRoles = <Role>[];
    var allPlayStyles = <PlayStyle>[];

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

    emit(state.copyWith(roles: allRoles, playStyles: allPlayStyles));
  }
}
