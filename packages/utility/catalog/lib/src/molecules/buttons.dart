import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Button'),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.space5,
            ),
            child: Column(
              children: [
                const ChemistryIcon(
                  chemistryCount: 3,
                  isSelected: false,
                ),
                PrimaryButton(
                  text: 'Apply',
                  onPressed: () {},
                ),
                const SizedBox(height: AppSpacing.space5),
                PrimaryButton(
                  buttonType: ButtonSize.small,
                  text: 'Select Player',
                  onPressed: () {},
                ),
                const SizedBox(height: AppSpacing.space5),
                const PrimaryButton(
                  text: 'Primary Normal Disabled',
                ),
                const SizedBox(height: AppSpacing.space5),
                const PrimaryButton(
                  buttonType: ButtonSize.small,
                  text: 'Primary Normal Small Disabled',
                ),
                const SizedBox(height: AppSpacing.space5),
                SecondaryButton(
                  text: 'Secondary Normal',
                  onPressed: () {},
                ),
                const SizedBox(height: AppSpacing.space5),
                SecondaryButton(
                  buttonType: ButtonSize.small,
                  text: 'Secondary Normal Small',
                  onPressed: () {},
                ),
                const SizedBox(height: AppSpacing.space5),
                const SecondaryButton(
                  text: 'Secondary Normal Disabled',
                ),
                const SizedBox(height: AppSpacing.space5),
                const SecondaryButton(
                  buttonType: ButtonSize.small,
                  text: 'Secondary Normal Small Disabled',
                ),
                const SizedBox(height: AppSpacing.space5),
                DestructiveButton(
                  text: 'Delete',
                  onPressed: () {},
                ),
                const SizedBox(height: AppSpacing.space5),
                PullDownButton(
                  pullDownButtonType: PullDownButtonType.full,
                  label: 'Champions League',
                  icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 16),
                  borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
                ),
                const SizedBox(height: AppSpacing.space5),
                PullDownButton(
                  onTap: () {},
                  constrainedWidth: MediaQuery.sizeOf(context).width / 2 - 32,
                  label: 'Champions League Women',
                  icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 16),
                  borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
