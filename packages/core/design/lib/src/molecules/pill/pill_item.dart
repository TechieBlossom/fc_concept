import 'package:flutter/material.dart';

class PillItem<T> {
  const PillItem({
    required this.data,
    required this.text,
    required this.isSelected,
    this.hasDigit = false,
    this.iconData,
    this.image,
    this.onTap,
  });

  final T data;
  final String text;
  final bool isSelected;
  final bool hasDigit;
  final IconData? iconData;
  final Widget? image;
  final VoidCallback? onTap;
}
