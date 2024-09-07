import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Prices extends StatelessWidget {
  const Prices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Price'),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSpacing.space5),
            Price(
              priceItem: PriceItem(
                label: 'Last: ',
                price: '10000000',
                icon: Icons.animation_rounded,
                formatter: currencyFormatter,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
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
