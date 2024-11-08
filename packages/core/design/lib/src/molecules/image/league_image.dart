import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

const _apiBasePath = 'https://game-assets.fut.gg/';

class LeagueImage extends StatelessWidget {
  const LeagueImage({
    super.key,
    required this.league,
  });

  final League league;

  @override
  Widget build(BuildContext context) {
    final imagePath = Theme.of(context).brightness == Brightness.dark
        ? league.imagePath
        : league.imageLightPath;
    if (imagePath == null) return const SizedBox.shrink();
    return CachedNetworkImage(
      width: 20,
      fit: BoxFit.fitWidth,
      imageUrl: '$_apiBasePath$imagePath',
      placeholderFadeInDuration: const Duration(milliseconds: 500),
      fadeInDuration: const Duration(milliseconds: 500),
    );
  }
}
