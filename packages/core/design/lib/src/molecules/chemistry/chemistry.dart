import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:utility_extensions/extensions.dart';

class Chemistry extends StatelessWidget {
  const Chemistry({
    super.key,
    required this.chemistryStyle,
  });

  final ChemistryStyle? chemistryStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          chemistryStyle?.name.capitalize() ?? '- - - - - ',
          style: context.typography.body2.copyWith(
            color: context.colors.contentPrimary,
          ),
        ),
      ],
    );
  }
}
