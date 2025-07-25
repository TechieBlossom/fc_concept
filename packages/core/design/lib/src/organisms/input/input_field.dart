import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';

enum InputFieldOrder {
  top,
  middle,
  bottom,
}

enum FieldType {
  words,
  email,
  password,
}

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.order,
    required this.fieldType,
    required this.hint,
    this.onChanged,
  });

  final InputFieldOrder order;
  final FieldType fieldType;
  final String hint;
  final void Function(String)? onChanged;

  TextCapitalization get textCapitalization => switch (fieldType) {
        FieldType.words => TextCapitalization.words,
        FieldType.email || FieldType.password => TextCapitalization.none,
      };

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
            top: BorderSide(color: context.colors.contentTertiary),
            left: BorderSide(color: context.colors.contentTertiary),
            right: BorderSide(color: context.colors.contentTertiary),
            bottom: BorderSide(
              color: context.colors.contentTertiary,
              width: 0.5,
            ),
          ),
        InputFieldOrder.middle => Border(
            top: BorderSide(
              color: context.colors.contentTertiary,
              width: 0.5,
            ),
            left: BorderSide(color: context.colors.contentTertiary),
            right: BorderSide(color: context.colors.contentTertiary),
            bottom: BorderSide(
              color: context.colors.contentTertiary,
              width: 0.5,
            ),
          ),
        InputFieldOrder.bottom => Border(
            top: BorderSide(
              color: context.colors.contentTertiary,
              width: 0.5,
            ),
            left: BorderSide(color: context.colors.contentTertiary),
            right: BorderSide(color: context.colors.contentTertiary),
            bottom: BorderSide(color: context.colors.contentTertiary),
          ),
      };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: context.colors.backgroundSecondary,
        border: border,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space3,
      ),
      child: TextFormField(
        cursorHeight: 20,
        controller: _controller..text = widget.hint,
        onChanged: widget.onChanged,
        textCapitalization: widget.textCapitalization,
        style: context.typography.body3.copyWith(
          color: context.colors.contentPrimary,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: AppSpacing.space3,
          ),
          border: InputBorder.none,
          hintText: widget.hint,
          hintStyle: context.typography.body3.copyWith(
            color: context.colors.contentSecondary,
          ),
          hintFadeDuration: const Duration(milliseconds: 100),
        ),
      ),
    );
  }
}
