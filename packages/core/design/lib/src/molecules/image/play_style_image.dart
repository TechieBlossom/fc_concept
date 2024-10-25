import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_design/design.dart';
import 'package:core_design/src/atoms/app_colors.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

const _apiBasePath = 'https://game-assets.fut.gg/';

enum PlayStyleImageSize {
  small,
  medium,
}

class PlayStyleImage extends StatelessWidget {
  const PlayStyleImage({
    super.key,
    required this.playStyle,
    this.size = PlayStyleImageSize.small,
    this.isPlus = false,
  });

  final PlayStyle playStyle;
  final PlayStyleImageSize size;
  final bool isPlus;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      color: isPlus ? context.colors.gold2 : context.colors.contentPrimary,
      width: size == PlayStyleImageSize.small
          ? AppSpacing.space7
          : AppSpacing.space8,
      fit: BoxFit.fitWidth,
      imageUrl: '$_apiBasePath${playStyle.imagePath}',
      placeholderFadeInDuration: const Duration(milliseconds: 500),
      fadeInDuration: const Duration(milliseconds: 500),
    );
  }
}
