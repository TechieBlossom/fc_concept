import 'package:flutter/material.dart';
import 'package:utility_catalog/src/molecules/buttons.dart';
import 'package:utility_catalog/src/molecules/compares.dart';
import 'package:utility_catalog/src/molecules/messages.dart';
import 'package:utility_catalog/src/molecules/ornaments.dart';
import 'package:utility_catalog/src/molecules/pills.dart';
import 'package:utility_catalog/src/molecules/prices.dart';
import 'package:utility_catalog/src/molecules/rarity_boxes.dart';
import 'package:utility_catalog/src/molecules/rating_boxes.dart';

class MoleculesContent extends StatelessWidget {
  const MoleculesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Molecules')),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Button',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Buttons(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'RatingBox',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RatingBoxes(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'RarityBox',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RarityBoxes(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Ornament',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Ornaments(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Pill',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Pills(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Compare',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Compares(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Price',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Prices(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Messages',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Messages(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
