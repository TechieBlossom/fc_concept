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
          SizedBox(height: spacingXL.value),
          SearchContainer(
            onLeadingTap: () {},
            onFilterTap: () {},
            onSearch: (query) {},
            onClearTap: () {},
          ),
          SizedBox(height: spacingXL.value),
          SearchContainer(
            initialValue: 'Messi',
            onLeadingTap: () {},
            onFilterTap: () {},
            onSearch: (query) {},
            onClearTap: () {},
          ),
          SizedBox(height: spacingXL.value),
          SearchContainer(
            initialValue: 'Messi',
            isLoading: true,
            onLeadingTap: () {},
            onFilterTap: () {},
            onSearch: (query) {},
            onClearTap: () {},
          ),
        ],
      ),
    );
  }
}
