import 'package:core_design/design.dart';
import 'package:flutter/material.dart';
import 'package:utility_catalog/src/organisms/cards.dart';
import 'package:utility_catalog/src/organisms/list_items.dart';
import 'package:utility_catalog/src/organisms/page_titles.dart';
import 'package:utility_catalog/src/organisms/player_headers.dart';
import 'package:utility_catalog/src/organisms/search_fields.dart';

class OrganismsContent extends StatelessWidget {
  const OrganismsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Organisms')),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'PageTitle',
              style: context.typography.headline,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PageTitles(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Cards',
              style: context.typography.headline,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Cards(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'List Items',
              style: context.typography.headline,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListItems(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Search Fields',
              style: context.typography.headline,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchFields(),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Player Headers',
              style: context.typography.headline,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerHeaders(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
