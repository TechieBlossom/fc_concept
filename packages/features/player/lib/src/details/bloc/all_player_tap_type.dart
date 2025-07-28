sealed class AllPlayerTapType {
  const AllPlayerTapType({
    required this.data,
  });

  final dynamic data;
}

class RolePlayerTapType extends AllPlayerTapType {
  RolePlayerTapType({
    required super.data,
  });
}

class PlayStylePlayerTapType extends AllPlayerTapType {
  PlayStylePlayerTapType({
    required super.data,
  });
}
