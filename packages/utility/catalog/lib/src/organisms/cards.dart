import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Cards'),
      body: ListView(
        children: [
          const SizedBox(height: AppSpacing.space5),
          PriceCard(
            bg: 0xFFFFFFFF,
            fg: 0xFF000000,
            priceItems: [
              PriceItem(
                label: 'Last: ',
                price: 10000000,
                formatter: AppFormatter.currencyFormat,
              ),
              const PriceItem(
                label: 'Discard:',
                price: 101020,
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.space5),
          const InfoCard(
            age: '35',
            height: '195cm (6\'5")',
            weight: '75kg (150lbs)',
            skills: '5',
            weakFoot: '4',
            foot: 'Right',
          ),
          const SizedBox(height: AppSpacing.space5),
          const AttributesCard(
            paceRating: 91,
            shootRating: 96,
            passRating: 97,
            dribbleRating: 98,
            defendRating: 40,
            physicalRating: 77,
          ),
        ],
      ),
    );
  }
}
