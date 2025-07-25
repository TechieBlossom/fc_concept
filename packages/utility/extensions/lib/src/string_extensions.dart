extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String capitalizeEachWord() {
    return split(' ').map((e) => e.capitalize()).join(' ');
  }
}
