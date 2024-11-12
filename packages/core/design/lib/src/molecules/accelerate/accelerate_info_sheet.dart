import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/accelerate/accelerate_bar.dart';
import 'package:core_design/src/molecules/button/primary_button.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

const _controlled =
    'Players accelerate in a more balanced and controlled manner.';
const _explosive =
    'Shorter and more agile players who are quicker to start, but their acceleration rate slows down after the initial burst of acceleration.';
const _lengthy =
    'Taller and stronger players that start slow but thrive over longer distances once they get going.';
const _controlledExplosive = '50% Explosive, 50% Controlled';
const _mostlyExplosive = '70% Explosive, 30% Controlled';
const _controlledLengthy = '50% Lengthy, 50% Controlled';
const _mostlyLengthy = '70% Lengthy, 30% Controlled';

class AccelerateInfoSheet extends StatelessWidget {
  const AccelerateInfoSheet({
    super.key,
    required this.accelerateType,
  });

  final AccelerateType accelerateType;

  String get description => switch (accelerateType) {
        AccelerateType.controlled => _controlled,
        AccelerateType.explosive => _explosive,
        AccelerateType.lengthy => _lengthy,
        AccelerateType.controlledExplosive =>
          '''Controlled: $_controlled\n\nExplosive: $_explosive\n\n$_controlledExplosive''',
        AccelerateType.mostlyExplosive =>
          '''Controlled: $_controlled\n\nExplosive: $_explosive\n\n$_mostlyExplosive''',
        AccelerateType.controlledLengthy =>
          '''Controlled: $_controlled\n\nLengthy: $_lengthy\n\n$_controlledLengthy''',
        AccelerateType.mostlyLengthy =>
          '''Controlled: $_controlled\n\nLengthy: $_lengthy\n\n$_mostlyLengthy''',
      };

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: AccelerateBar(accelerateType: accelerateType),
        ),
        const SizedBox(height: AppSpacing.space5),
        Text(
          description,
          style: context.typography.body1.copyWith(
            color: context.colors.contentSecondary,
            height: 1.2,
          ),
        ),
        const SizedBox(height: AppSpacing.space5),
        // Align(
        //   child: SecondaryButton(
        //     text: 'All Players with ${accelerateType.name}',
        //     onPressed: () {},
        //   ),
        // ),
        PrimaryButton(
          text: 'Got it!',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
