import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const _apiBasePath = 'https://game-assets.fut.gg/';

class PlayerImage extends StatelessWidget {
  const PlayerImage({
    super.key,
    required this.imagePath,
    this.size = PlayerImageSize.small,
  });

  final PlayerImageSize size;
  final String imagePath;

  (double?, double?) get dimensions => switch (size) {
        PlayerImageSize.small => (53.67, 75),
        PlayerImageSize.medium => (71.56, 100),
        PlayerImageSize.large => (200.36, 280),
        PlayerImageSize.infiniteWidth => (null, null),
      };

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: dimensions.$1,
      height: dimensions.$2,
      fit: BoxFit.fitWidth,
      imageUrl: '$_apiBasePath$imagePath',
      fadeInDuration: const Duration(milliseconds: 500),
      httpHeaders: {
        'contentType': 'image/png',
      },
    );
  }
}

enum PlayerImageSize {
  small,
  medium,
  large,
  infiniteWidth,
}
