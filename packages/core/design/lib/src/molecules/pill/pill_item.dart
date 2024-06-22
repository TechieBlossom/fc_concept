import 'package:flutter/material.dart';

class PillItem<T> {

  const PillItem({
    required this.data,
    required this.text,
    required this.isSelected,
    this.onTap,
    this.hasDigit = false,
    this.iconData,
  });

  final T data;
  final String text;
  final bool isSelected;
  final bool hasDigit;
  final IconData? iconData;
  final VoidCallback? onTap;
}