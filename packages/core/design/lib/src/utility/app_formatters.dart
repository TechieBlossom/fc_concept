import 'package:intl/intl.dart';

class AppFormatter {
  AppFormatter._();

  static NumberFormat currencyFormat = NumberFormat('###,###,###,###,###.##');
  static NumberFormat currencyFormatWithoutDecimal =
      NumberFormat('###,###,###,###,###.#');
  static DateFormat chartDateFormat = DateFormat('dd-MMM');
  static DateFormat chartDateTimeFormat = DateFormat('dd-MMM, HH:mm');

  static String formatCurrency(num value) {
    return '${currencyFormat.format(value)}';
  }

  static String formatCurrencyWithoutDecimal(num value) {
    return '${currencyFormatWithoutDecimal.format(value)}';
  }

  static String formatPositiveValue(num value) {
    return '+${currencyFormat.format(value)}';
  }

  static String formatNegativeValue(num value) {
    return '-${currencyFormat.format(value)}';
  }

  static String formatDate(DateTime dateTime) {
    return '${chartDateFormat.format(dateTime)}';
  }

  static String formatDateTime(DateTime dateTime) {
    return '${chartDateTimeFormat.format(dateTime)}';
  }

  static String formatCurrencyShortForm(num value) {
    String suffix;
    double shortForm;
    final k = value / 1000;
    if (k >= 1000) {
      final m = k / 1000;
      suffix = "M";
      shortForm = m;
    } else {
      suffix = "K";
      shortForm = k;
    }

    return '${formatCurrencyWithoutDecimal(shortForm)}$suffix';
  }
}
