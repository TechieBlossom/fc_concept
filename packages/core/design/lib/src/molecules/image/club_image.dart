import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

const _apiBasePath = 'https://game-assets.fut.gg/';

enum ClubImageSize {
  small,
  large,
}

class ClubImage extends StatelessWidget {
  const ClubImage({
    super.key,
    required this.club,
    this.size = ClubImageSize.small,
  });

  final Club club;
  final ClubImageSize size;

  double get width => size == ClubImageSize.small ? 20 : 40;

  @override
  Widget build(BuildContext context) {
    final imagePath = Theme.of(context).brightness == Brightness.dark
        ? club.imagePath
        : club.lightImagePath;
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
