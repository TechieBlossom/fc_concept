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
            padding: spacingXL.horizontal,
            child: Column(
              children: [
                PrimaryButton(
                  text: 'Apply',
                  onPressed: () {},
                ),
                SizedBox(height: spacingXL.value),
                PrimaryButton(
                  buttonType: ButtonType.small,
                  text: 'Select Player',
                  onPressed: () {},
                ),
                SizedBox(height: spacingXL.value),
                const PrimaryButton(
                  text: 'Primary Normal Disabled',
                ),
                SizedBox(height: spacingXL.value),
                const PrimaryButton(
                  buttonType: ButtonType.small,
                  text: 'Primary Normal Small Disabled',
                ),
                SizedBox(height: spacingXL.value),
                SecondaryButton(
                  text: 'Secondary Normal',
                  onPressed: () {},
                ),
                SizedBox(height: spacingXL.value),
                SecondaryButton(
                  buttonType: ButtonType.small,
                  text: 'Secondary Normal Small',
                  onPressed: () {},
                ),
                SizedBox(height: spacingXL.value),
                const SecondaryButton(
                  text: 'Secondary Normal Disabled',
                ),
                SizedBox(height: spacingXL.value),
                const SecondaryButton(
                  buttonType: ButtonType.small,
                  text: 'Secondary Normal Small Disabled',
                ),
                SizedBox(height: spacingXL.value),
                ErrorButton(
                  text: 'Delete',
                  onPressed: () {},
                ),
                SizedBox(height: spacingXL.value),
                PullDownButton(
                  pullDownButtonType: PullDownButtonType.full,
                  label: 'Champions League',
                  icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 16),
                  borderRadius: mediumCorner.all,
                ),
                SizedBox(height: spacingXL.value),
                PullDownButton(
                  onTap: () {},
                  constrainedWidth: MediaQuery.sizeOf(context).width/2 - 32,
                  label: 'Champions League Women',
                  icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 16),
                  borderRadius: mediumCorner.all,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
