import 'package:core_design/design.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle(title: 'About Us'),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.space5),
        child: Text(
          'Our team of dedicated FIFA enthusiasts is committed to providing you '
          'with the tools to dominate the pitch. '
          "We're more than just a platform; we're a community of gamers, "
          'here to help you build your best squad. '
          'We offer a unique approach to player data analysis, '
          'helping you find hidden gems and build a competitive squad.\n\n'
          'All game assets, player faces, club badges and league logos are property of EA Sports.',
          style: context.typography.body4.copyWith(
            color: context.colors.contentPrimary,
          ),
        ),
      ),
    );
  }
}
