import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class TemplatesContent extends StatelessWidget {
  const TemplatesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Templates')),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Loading Page',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoadingList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
