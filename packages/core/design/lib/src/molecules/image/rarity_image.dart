import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

const _apiBasePath = 'https://game-assets.fut.gg/';

class RarityImage extends StatelessWidget {
  const RarityImage({
    super.key,
    required this.rarity,
  });

  final Rarity rarity;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: 20,
      fit: BoxFit.fitWidth,
      imageUrl: '$_apiBasePath${rarity.imagePath}',
      placeholderFadeInDuration: const Duration(milliseconds: 500),
      fadeInDuration: const Duration(milliseconds: 500),
    );
  }
}
