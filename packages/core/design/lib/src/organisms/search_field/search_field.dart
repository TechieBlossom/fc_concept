import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    required this.onSearch,
    required this.onClearTap,
    this.isLoading = false,
    this.initialValue = '',
  });

  final String initialValue;
  final bool isLoading;
  final void Function(String) onSearch;
  final VoidCallback onClearTap;

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
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: mediumCorner.all,
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
          ),
          margin: spacingXL.horizontal + spacingM.vertical,
          padding: spacingM.horizontal,
          child: TextFormField(
            cursorHeight: 20,
            controller: _controller,
            onChanged: widget.onSearch,
            textCapitalization: TextCapitalization.words,
            style: context
                .labelMedium()
                .copyWith(color: Theme.of(context).colorScheme.primary),
            decoration: InputDecoration(
              contentPadding: spacingL.top + spacingXS.top + spacingL.left,
              border: InputBorder.none,
              suffixIcon: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: showClearIcon ? 1 : 0,
                child: IconButton(
                  onPressed: () {
                    _controller.clear();
                    widget.onClearTap();
                  },
                  icon: Icon(Icons.backspace_outlined),
                ),
              ),
              hintText: 'Search by player name',
              hintStyle: context
                  .labelMedium()
                  .copyWith(color: Theme.of(context).colorScheme.secondary),
              hintFadeDuration: const Duration(milliseconds: 100),
            ),
          ),
        ),
        Positioned(
          height: spacingM.value,
          bottom: spacingM.value,
          left: spacingXL.value,
          right: spacingXL.value,
          child: AnimatedOpacity(
            opacity: widget.isLoading ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: Shimmer.fromColors(
              baseColor: const Color(0xFFD5E6FF),
              highlightColor: const Color(0xFFACECD8),
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
    );
  }
}
