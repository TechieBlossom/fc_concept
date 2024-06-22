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
          SizedBox(height: spacingXL.value),
          const CollapsibleCard(
            heading: 'Info',
            compareItems: [
              CompareItem(
                label: 'Age',
                first: '35',
                second: '32',
                hasDigit: true,
              ),
              CompareItem(
                label: 'Skills',
                first: '5',
                second: '4',
                hasDigit: true,
                icon: Icons.star_rounded,
              ),
              CompareItem(
                label: 'Skills',
                first: '5',
                second: '4',
                hasDigit: true,
                icon: Icons.star_rounded,
              ),
              CompareItem(
                label: 'Skills',
                first: '5',
                second: '4',
                hasDigit: true,
                icon: Icons.star_rounded,
              ),
              CompareItem(
                label: 'Skills',
                first: '5',
                second: '4',
                hasDigit: true,
                icon: Icons.star_rounded,
              ),
            ],
          ),
          SizedBox(height: spacingXL.value),
          PriceCard(
            bg: 0xFFFFFFFF,
            fg: 0xFF000000,
            priceItems: [
              PriceItem(
                label: 'Last: ',
                price: '10000000',
                icon: Icons.animation_rounded,
                formatter: currencyFormatter,
              ),
              const PriceItem(
                label: 'PRP:',
                price: '50%',
              ),
            ],
          ),
          SizedBox(height: spacingXL.value),
          StatsCardVertical(
            heading: 'Pace',
            statItems: [
              StatItem(
                  label: 'Acceleration',
                  value: '90',
              ),
              StatItem(
                  label: 'Sprint Speed',
                  value: '90',
              ),
            ],
          ),
          SizedBox(height: spacingXL.value),
          StatsCardVertical(
            heading: 'Pace',
            statItems: [
              StatItem(
                  label: 'Acceleration',
                  value: '90',
              ),
              StatItem(
                  label: 'Sprint Speed',
                  value: '90',
              ),
              StatItem(
                  label: 'Acceleration',
                  value: '90',
              ),
              StatItem(
                  label: 'Sprint Speed',
                  value: '90',
              ),
              StatItem(
                  label: 'Acceleration',
                  value: '90',
              ),
              StatItem(
                  label: 'Sprint Speed',
                  value: '90',
              ),
            ],
          ),
          SizedBox(height: spacingXL.value),
          const InfoCard(
            age: 35,
            height: 195,
            skills: 5,
            weakFoot: 4,
            workRate: 'MED/MED',
          ),
          SizedBox(height: spacingXL.value),
          const StatCard(
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
