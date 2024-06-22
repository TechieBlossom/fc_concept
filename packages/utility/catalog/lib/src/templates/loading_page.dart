import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageTitle(
        title: 'Loading Page',
      ),
      body: LoadingList(),
    );
  }
}
