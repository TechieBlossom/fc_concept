import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    this.onSearch,
    this.onClearTap,
    this.onFilterTap,
    this.onLeadingTap,
    this.onTap,
    this.isLoading = false,
    this.initialValue = '',
  });

  final String initialValue;
  final bool isLoading;
  final VoidCallback? onFilterTap;
  final VoidCallback? onLeadingTap;
  final void Function(String)? onSearch;
  final VoidCallback? onClearTap;
  final VoidCallback? onTap;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController _controller;
  late bool showClearIcon;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.text = widget.initialValue;
    showClearIcon = widget.initialValue.isNotEmpty;
    _controller.addListener(() {
      setState(() {
        showClearIcon = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppCornerRadius.radius2),
              color: context.colors.backgroundTertiary,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: AppSpacing.space5,
              vertical: AppSpacing.space3,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.space3,
            ),
            child: TextFormField(
              cursorHeight: 20,
              controller: _controller,
              onChanged: widget.onSearch,
              textCapitalization: TextCapitalization.words,
              style: context.typography.body1.copyWith(
                color: context.colors.contentPrimary,
              ),
              cursorColor: context.colors.contentPrimary,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(
                  top: AppSpacing.space4 + AppSpacing.space1,
                  left: AppSpacing.space4,
                ),
                border: InputBorder.none,
                prefixIcon: widget.onLeadingTap != null
                    ? IconButton(
                        onPressed: widget.onLeadingTap,
                        icon: Icon(Icons.menu_rounded),
                      )
                    : null,
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 300),
                      opacity: showClearIcon ? 1 : 0,
                      child: IconButton(
                        onPressed: () {
                          _controller.clear();
                          widget.onClearTap?.call();
                        },
                        icon: Icon(Icons.backspace_outlined),
                      ),
                    ),
                    if (widget.onFilterTap != null)
                      IconButton(
                        onPressed: widget.onFilterTap,
                        icon: Icon(Icons.filter_alt_rounded),
                      ),
                  ],
                ),
                hintText: 'Search by player name',
                hintStyle: context.typography.body1
                    .copyWith(color: context.colors.contentSecondary),
                hintFadeDuration: const Duration(milliseconds: 100),
              ),
            ),
          ),
          Positioned(
            height: AppSpacing.space3,
            bottom: AppSpacing.space3,
            left: AppSpacing.space5,
            right: AppSpacing.space5,
            child: AnimatedOpacity(
              opacity: widget.isLoading ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: Shimmer.fromColors(
                baseColor: context.colors.contentPrimary.withOpacity(0.5),
                highlightColor: context.colors.contentPrimary,
                child: SizedBox(
                  height: 8,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: mediumCorner.bottom,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
