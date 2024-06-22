import 'package:core_api_client/api_client.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

const _futApiPath = 'https://futdb.app/api/players';

class PlayerImage extends StatelessWidget {
  const PlayerImage({
    super.key,
    required this.playerId,
    this.size = PlayerImageSize.small,
  });

  final PlayerImageSize size;
  final int playerId;

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
      imageUrl: '$_futApiPath/$playerId/image',
      fadeInDuration: const Duration(milliseconds: 500),
      httpHeaders: {
        'contentType': 'image/png',
        'X-AUTH-TOKEN': futApiKey,
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
