import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class InfoStats extends StatelessWidget {
  const InfoStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Info & Stats'),
      body: Padding(
        padding: spacingXL.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: spacingXL.value),
            const Info(label: 'AGE', value: '35'),
            SizedBox(height: spacingXL.value),
            const Stat(label: 'PAC', rating: 90),
            SizedBox(height: spacingXL.value),
            // const StatH(label: 'Acceleration', rating: 90),
          ],
        ),
      ),
    );
  }
}
