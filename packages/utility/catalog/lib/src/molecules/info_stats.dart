import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class InfoStats extends StatelessWidget {
  const InfoStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageTitle(title: 'Info & Stats'),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.space5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppSpacing.space5),
            Info(label: 'AGE', value: '35'),
            SizedBox(height: AppSpacing.space5),
            Attribute(
              attributeItem: AttributeItem(
                attribute: 'PAC',
                rating: 90,
                boost: 0,
              ),
            ),
            SizedBox(height: AppSpacing.space5),
            // const StatH(label: 'Acceleration', rating: 90),
          ],
        ),
      ),
    );
  }
}
