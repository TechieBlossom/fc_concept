import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CompareItem {
  final String label;
  final String? first;
  final String? second;
  final IconData? icon;
  final bool hasDigit;
  final NumberFormat? formatter;

  const CompareItem({
    required this.label,
    required this.first,
    required this.second,
    this.icon,
    this.hasDigit = false,
    this.formatter,
  });
}
