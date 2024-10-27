import 'package:intl/intl.dart';

class PriceItem {
  final String label;
  final int? price;
  final NumberFormat? formatter;

  const PriceItem({
    required this.label,
    required this.price,
    this.formatter,
  });
}
