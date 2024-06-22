import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

const _length = 7;

class LoadingList extends StatelessWidget {
  const LoadingList({
    super.key,
    this.count = _length,
    this.loadingListType = LoadingListType.player,
  });

  final int count;
  final LoadingListType loadingListType;

  Widget get shimmer => switch (loadingListType) {
        LoadingListType.player => ShimmerListItem(),
        LoadingListType.filterGroup => ShimmerFilterGroup(),
      };

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < count; i++) shimmer,
      ],
    );
  }
}

enum LoadingListType {
  player,
  filterGroup,
}
