import 'package:intl/intl.dart';

class AppFormatter {
  AppFormatter._();

  static NumberFormat currencyFormat = NumberFormat('###,###,###,###,###.##');

  static String formatCurrency(num value) {
    return '${currencyFormat.format(value)}';
  }

  static String formatPositiveValue(num value) {
    return '+${currencyFormat.format(value)}';
  }

  static String formatNegativeValue(num value) {
    return '-${currencyFormat.format(value)}';
  }
}
