import 'package:flutter/widgets.dart';

sealed class Spacing {
  const Spacing(this.value);

  final double value;

  EdgeInsets get all => EdgeInsets.all(value);

  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: value);

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: value);

  EdgeInsets get top => EdgeInsets.only(top: value);

  EdgeInsets get right => EdgeInsets.only(right: value);

  EdgeInsets get bottom => EdgeInsets.only(bottom: value);

  EdgeInsets get left => EdgeInsets.only(left: value);
}

class _SpacingXS extends Spacing {
  const _SpacingXS() : super(2);
}

class _SpacingS extends Spacing {
  const _SpacingS() : super(4);
}

class _SpacingM extends Spacing {
  const _SpacingM() : super(8);
}

class _SpacingL extends Spacing {
  const _SpacingL() : super(12);
}

class _SpacingXL extends Spacing {
  const _SpacingXL() : super(16);
}

const spacingXS = _SpacingXS();
const spacingS = _SpacingS();
const spacingM = _SpacingM();
const spacingL = _SpacingL();
const spacingXL = _SpacingXL();
