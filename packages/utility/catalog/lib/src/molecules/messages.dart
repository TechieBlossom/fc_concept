import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageTitle(title: 'Messages'),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.space5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppSpacing.space5),
            InfoMessage(message: 'No Players with name'),
            SizedBox(height: AppSpacing.space5),
            InfoMessage(
              message: 'No Players with name',
              highlightMessage: 'Messi Anthem',
            ),
          ],
        ),
      ),
    );
  }
}
