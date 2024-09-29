import 'package:core_design/src/organisms/search_field/search_field.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget implements PreferredSize {
  const SearchContainer({
    super.key,
    required this.onSearch,
    required this.onLeadingTap,
    required this.onClearTap,
    this.margin,
    this.isLoading = false,
    this.initialValue = '',
  });

  final String initialValue;
  final bool isLoading;
  final VoidCallback? onLeadingTap;
  final void Function(String) onSearch;
  final VoidCallback onClearTap;
  final EdgeInsets? margin;

  @override
  Widget get child => const SizedBox.shrink();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 56);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: margin,
      child: SearchField(
        initialValue: initialValue,
        isLoading: isLoading,
        onSearch: onSearch,
        onClearTap: onClearTap,
        onLeadingTap: onLeadingTap,
      ),
    );
  }
}
