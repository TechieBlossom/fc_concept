import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CompareItem {
  final String label;
  final String? first;
  final String? second;
  final Widget? trailing;
  final bool hasDigit;
  final NumberFormat? formatter;

  const CompareItem({
    required this.label,
    required this.first,
    required this.second,
    this.trailing,
    this.hasDigit = false,
    this.formatter,
  });
}
