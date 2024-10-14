import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_domain/domain.dart';
import 'package:flutter/material.dart';

const _apiBasePath = 'https://game-assets.fut.gg/';

class NationImage extends StatelessWidget {
  const NationImage({
    super.key,
    required this.nation,
  });

  final Nation nation;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: 20,
      fit: BoxFit.fitWidth,
      imageUrl: '$_apiBasePath${nation.imagePath}',
      placeholderFadeInDuration: const Duration(milliseconds: 500),
      fadeInDuration: const Duration(milliseconds: 500),
    );
  }
}
