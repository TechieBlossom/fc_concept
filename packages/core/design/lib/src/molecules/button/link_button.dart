import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonType = ButtonSize.normal,
    this.reverseTheme = false,
  });

  final String text;
  final VoidCallback? onPressed;
  final ButtonSize buttonType;
  final bool reverseTheme;

  @override
  Widget build(BuildContext context) {
    final textStyle = switch (buttonType) {
      ButtonSize.normal => context.typography.body1,
      ButtonSize.small => context.typography.caption1,
    };

    return InkWell(
      onTap: onPressed,
      splashColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        padding: const EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
          border: BorderDirectional(
            bottom: BorderSide(
              width: 0.5,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
