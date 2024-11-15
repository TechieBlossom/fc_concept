import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

const _apiBasePath = 'https://game-assets.fut.gg/';

enum LeagueImageSize {
  small,
  medium,
}

class LeagueImage extends StatelessWidget {
  const LeagueImage({
    super.key,
    required this.league,
    this.size = LeagueImageSize.small,
  });

  final League league;
  final LeagueImageSize size;

  double get width => size == LeagueImageSize.small ? 20 : 32;

  @override
  Widget build(BuildContext context) {
    final imagePath = Theme.of(context).brightness == Brightness.dark
        ? league.imagePath
        : league.imageLightPath;
    if (imagePath == null) return const SizedBox.shrink();
    return CachedNetworkImage(
      width: width,
      fit: BoxFit.fitWidth,
      imageUrl: '$_apiBasePath$imagePath',
      placeholderFadeInDuration: const Duration(milliseconds: 500),
      fadeInDuration: const Duration(milliseconds: 500),
    );
  }
}
