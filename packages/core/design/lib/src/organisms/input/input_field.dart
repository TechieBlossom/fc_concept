import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';

enum InputFieldOrder {
  top,
  middle,
  bottom,
}

enum FieldType {
  text,
  email,
  password,
}

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.order,
    required this.fieldType,
    required this.hint,
  });

  final InputFieldOrder order;
  final FieldType fieldType;
  final String hint;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late TextEditingController _controller;
  late bool showClearIcon;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  BorderRadius get borderRadius => switch (widget.order) {
        InputFieldOrder.top => BorderRadius.vertical(
            top: Radius.circular(AppCornerRadius.radius2),
          ),
        InputFieldOrder.middle => BorderRadius.zero,
        InputFieldOrder.bottom => BorderRadius.vertical(
            bottom: Radius.circular(AppCornerRadius.radius2),
          ),
      };

  Border get border => switch (widget.order) {
        InputFieldOrder.top => Border(
            top: BorderSide(color: context.colors.contentTertiary30),
            left: BorderSide(color: context.colors.contentTertiary30),
            right: BorderSide(color: context.colors.contentTertiary30),
            bottom: BorderSide(
              color: context.colors.contentTertiary30,
              width: 0.5,
            ),
          ),
        InputFieldOrder.middle => Border(
            top: BorderSide(
              color: context.colors.contentTertiary30,
              width: 0.5,
            ),
            left: BorderSide(color: context.colors.contentTertiary30),
            right: BorderSide(color: context.colors.contentTertiary30),
            bottom: BorderSide(
              color: context.colors.contentTertiary30,
              width: 0.5,
            ),
          ),
        InputFieldOrder.bottom => Border(
            top: BorderSide(
              color: context.colors.contentTertiary30,
              width: 0.5,
            ),
            left: BorderSide(color: context.colors.contentTertiary30),
            right: BorderSide(color: context.colors.contentTertiary30),
            bottom: BorderSide(color: context.colors.contentTertiary30),
          ),
      };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: context.colors.backgroundTertiary,
        border: border,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space3,
      ),
      child: TextFormField(
        cursorHeight: 20,
        controller: _controller,
        textCapitalization: TextCapitalization.words,
        style: context.typography.labelMedium.copyWith(
          color: context.colors.contentSecondary,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: AppSpacing.space3,
          ),
          border: InputBorder.none,
          hintText: widget.hint,
          hintStyle: context.typography.labelMedium.copyWith(
            color: context.colors.contentTertiary,
          ),
          hintFadeDuration: const Duration(milliseconds: 100),
        ),
      ),
    );
  }
}
