import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PriceItem {
  final String label;
  final String price;
  final IconData? icon;
  final NumberFormat? formatter;

  const PriceItem({
    required this.label,
    required this.price,
    this.formatter,
    this.icon,
  });
}
