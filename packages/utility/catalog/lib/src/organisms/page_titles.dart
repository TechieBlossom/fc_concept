import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class PageTitles extends StatelessWidget {
  const PageTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Page Title'),
      body: ListView(
        children: [
          SizedBox(height: spacingXL.value),
          const PageTitle(title: 'Only Title'),
          SizedBox(height: spacingXL.value),
          PageTitle(
            title: 'With Action',
            action: 'Compare',
            onAction: () {},
          ),
          SizedBox(height: spacingXL.value),
          PageTitle(
            action: 'Compare',
            onAction: () {},
          ),
          SizedBox(height: spacingXL.value),
          const PageTitle(),
          SizedBox(height: spacingXL.value),
          PageTitle(
            isSmall: true,
            title: 'Small',
            action: 'Compare',
            onAction: () {},
          ),
        ],
      ),
    );
  }
}
