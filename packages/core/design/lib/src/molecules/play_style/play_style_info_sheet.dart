import 'package:core_design/src/atoms/atoms.dart';
import 'package:core_design/src/molecules/button/link_button.dart';
import 'package:core_design/src/molecules/button/primary_button.dart';
import 'package:core_design/src/molecules/play_style/play_style_widget.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

class PlayStyleInfoSheet extends StatelessWidget {
  const PlayStyleInfoSheet({
    super.key,
    required this.playStyle,
    required this.isPlus,
    this.allPlayersTap,
  });

  final PlayStyle playStyle;
  final bool isPlus;
  final VoidCallback? allPlayersTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: PlayStyleWidget(
            playStyle: playStyle,
            isPlus: isPlus,
            size: PlayStyleWidgetSize.medium,
          ),
        ),
        const SizedBox(height: AppSpacing.space5),
        Text(
          isPlus
              ? playStyle.playstylePDescription
              : playStyle.playstyleDescription,
          style: context.typography.body1.copyWith(
            color: context.colors.contentSecondary,
            height: 1.2,
          ),
        ),
        const SizedBox(height: AppSpacing.space5),
        // Align(
        //   child: Padding(
        //     padding: const EdgeInsets.all(AppSpacing.space5),
        //     child: LinkButton(
        //       text: 'Show All Players with ${playStyle.name}',
        //       reverseTheme: true,
        //       onPressed: allPlayersTap,
        //     ),
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
