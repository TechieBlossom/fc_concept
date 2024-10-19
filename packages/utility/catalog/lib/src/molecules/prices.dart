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
            PriceWidget(
              priceItem: PriceItem(
                label: 'Last: ',
                price: 10000000,
                formatter: AppFormatter.currencyFormat,
              ),
            ),
            const SizedBox(height: AppSpacing.space5),
            const PriceWidget(
              priceItem: PriceItem(
                label: 'Discard:',
                price: 10000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
