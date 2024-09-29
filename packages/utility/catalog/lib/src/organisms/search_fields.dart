import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class SearchFields extends StatelessWidget {
  const SearchFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Search Fields'),
      body: ListView(
        children: [
          const SizedBox(height: AppSpacing.space5),
          SearchContainer(
            onSearch: (query) {},
            onClearTap: () {},
            onLeadingTap: () {},
          ),
          const SizedBox(height: AppSpacing.space5),
          SearchContainer(
            initialValue: 'Messi',
            onSearch: (query) {},
            onClearTap: () {},
            onLeadingTap: () {},
          ),
          const SizedBox(height: AppSpacing.space5),
          SearchContainer(
            initialValue: 'Messi',
            isLoading: true,
            onSearch: (query) {},
            onClearTap: () {},
            onLeadingTap: () {},
          ),
        ],
      ),
    );
  }
}
