part of 'metadata_bloc.dart';

@MappableClass()
class MetadataState with MetadataStateMappable {
  MetadataState({
    this.roles = const [],
    this.playStyles = const [],
  });

  final List<Role> roles;
  final List<PlayStyle> playStyles;
}
