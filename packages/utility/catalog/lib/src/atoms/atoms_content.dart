import 'package:flutter/material.dart';
import 'package:utility_catalog/src/atoms/colors.dart';
import 'package:utility_catalog/src/atoms/shapes.dart';
import 'package:utility_catalog/src/atoms/spaces.dart';
import 'package:utility_catalog/src/atoms/texts.dart';

class AtomsContent extends StatelessWidget {
  const AtomsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atoms'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Colors'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ColorsContent(),
              ),
            ),
          ),
          ListTile(
            title: const Text('Shapes'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ShapesContent(),
              ),
            ),
          ),
          ListTile(
            title: const Text('Space'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SpacesContent(),
              ),
            ),
          ),
          ListTile(
            title: const Text('Text'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TextsContent(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
