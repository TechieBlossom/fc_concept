part of 'player_collection_bloc.dart';

@MappableClass()
class PlayerCollectionState with PlayerCollectionStateMappable {
  PlayerCollectionState({
    required this.data,
    this.processState = ProcessState.loading,
    this.isPaginating = false,
    this.hasReachedEnd = false,
    this.page = 0,
    this.players,
    this.filterConfiguration,
  });

  final dynamic data;
  final ProcessState processState;
  final bool isPaginating;
  final bool hasReachedEnd;
  final int page;
  final List<Player>? players;
  final FilterConfiguration? filterConfiguration;
}
