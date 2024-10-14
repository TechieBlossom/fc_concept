import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

const _apiBasePath = 'https://game-assets.fut.gg/';

class ClubImage extends StatelessWidget {
  const ClubImage({
    super.key,
    required this.club,
  });

  final Club club;

  @override
  Widget build(BuildContext context) {
    final imagePath = Theme.of(context).brightness == Brightness.dark
        ? club.imagePath
        : club.lightImagePath;
    return CachedNetworkImage(
      width: 20,
      fit: BoxFit.fitWidth,
      imageUrl: '$_apiBasePath$imagePath',
      placeholderFadeInDuration: const Duration(milliseconds: 500),
      fadeInDuration: const Duration(milliseconds: 500),
    );
  }
}
