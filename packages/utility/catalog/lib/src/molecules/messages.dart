import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'Messages'),
      body: Padding(
        padding: spacingXL.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: spacingXL.value),
            const InfoMessage(message: 'No Players with name'),
            SizedBox(height: spacingXL.value),
            const InfoMessage(
              message: 'No Players with name',
              highlightMessage: 'Messi Anthem',
            ),
          ],
        ),
      ),
    );
  }
}
