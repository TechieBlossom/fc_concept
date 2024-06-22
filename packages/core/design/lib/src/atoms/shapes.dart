import 'package:flutter/widgets.dart';

sealed class Corner {
  const Corner(this.value);

  final double value;

  Radius get circular => Radius.circular(value);

  BorderRadius get all => BorderRadius.all(circular);

  BorderRadius get horizontal =>
      BorderRadius.horizontal(left: circular, right: circular);

  BorderRadius get vertical =>
      BorderRadius.vertical(top: circular, bottom: circular);

  BorderRadius get top =>
      BorderRadius.only(topLeft: circular, topRight: circular);

  BorderRadius get bottom =>
      BorderRadius.only(bottomLeft: circular, bottomRight: circular);

  BorderRadius get topLeft => BorderRadius.only(topLeft: circular);

  BorderRadius get topRight => BorderRadius.only(topRight: circular);

  BorderRadius get bottomLeft => BorderRadius.only(bottomLeft: circular);

  BorderRadius get bottomRight => BorderRadius.only(bottomRight: circular);
}

class _SmallCorner extends Corner {
  const _SmallCorner() : super(4.0);
}

class _MediumCorner extends Corner {
  const _MediumCorner() : super(8.0);
}

class _InfiniteCorner extends Corner {
  const _InfiniteCorner() : super(100.0);
}

const smallCorner = _SmallCorner();
const mediumCorner = _MediumCorner();
const infiniteCorner = _InfiniteCorner();
