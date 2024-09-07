import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';

class InfoMessage extends StatelessWidget {
  const InfoMessage({
    super.key,
    required this.message,
    this.highlightMessage,
  });

  final String message;
  final String? highlightMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          message,
          textAlign: TextAlign.center,
          style: context.typography.bodyMedium,
        ),
        if (highlightMessage != null)
          Text(
            highlightMessage!,
            textAlign: TextAlign.center,
            style: context.typography.labelMedium,
          )
      ],
    );
  }
}
