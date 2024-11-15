import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

const _apiBasePath = 'https://game-assets.fut.gg/';

enum NationImageSize {
  small,
  medium,
}
class NationImage extends StatelessWidget {
  const NationImage({
    super.key,
    required this.nation,
    this.size = NationImageSize.small,
  });

  final Nation nation;
  final NationImageSize size;

  double get width => size == NationImageSize.small ? 20 : 32;

  @override
  Widget build(BuildContext context) {
    if (nation.imagePath == null) return const SizedBox.shrink();
    return CachedNetworkImage(
      width: width,
      fit: BoxFit.fitWidth,
      imageUrl: '$_apiBasePath${nation.imagePath}',
      placeholderFadeInDuration: const Duration(milliseconds: 500),
      fadeInDuration: const Duration(milliseconds: 500),
    );
  }
}
