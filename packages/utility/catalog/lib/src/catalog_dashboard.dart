import 'package:flutter/material.dart';
import 'package:utility_catalog/src/atoms/atoms_content.dart';
import 'package:utility_catalog/src/molecules/molecules_content.dart';
import 'package:utility_catalog/src/organisms/organisms_content.dart';
import 'package:utility_catalog/src/templates/templates_content.dart';

class CatalogDashboard extends StatefulWidget {
  const CatalogDashboard({super.key});

  @override
  State<CatalogDashboard> createState() => _CatalogDashboardState();
}

class _CatalogDashboardState extends State<CatalogDashboard> {
  late ValueNotifier<int> selectedTab;

  @override
  void initState() {
    super.initState();
    selectedTab = ValueNotifier(0);
  }

  final map = {
    'Atoms': const AtomsContent(),
    'Molecules': const MoleculesContent(),
    'Organisms': const OrganismsContent(),
    'Templates': const TemplatesContent(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      body: ListView(
        children: map.entries
            .map(
              (entry) => ListTile(
                title: Text(entry.key),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => entry.value,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
