import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Prices extends StatelessWidget {
  const Prices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Price'),
      body: Padding(
        padding: spacingXL.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: spacingXL.value),
            Price(
              priceItem: PriceItem(
                label: 'Last: ',
                price: '10000000',
                icon: Icons.animation_rounded,
                formatter: currencyFormatter,
              ),
            ),
            SizedBox(height: spacingXL.value),
            const Price(
              priceItem: PriceItem(
                label: 'PRP:',
                price: '50%',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
