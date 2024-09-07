import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_design/src/atoms/atoms.dart';
import 'package:flutter/material.dart';

const _imageBasePath =
    'https://ilvbpyniqpybqtgtnuam.supabase.co/storage/v1/object/public/rarity-cards/image';

class VersionImage extends StatelessWidget {
  const VersionImage({
    super.key,
    required this.id,
    required this.onTap,
    this.isHighlighted = false,
  });

  final int id;
  final bool isHighlighted;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(
          minHeight: 48,
          maxHeight: 48,
          minWidth: 40,
          maxWidth: 40,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppCornerRadius.radius1),
          border: isHighlighted ? Border.all() : null,
        ),
        padding: const EdgeInsets.all(AppSpacing.space2),
        child: CachedNetworkImage(
          height: 48,
          width: 34.23,
          fit: BoxFit.fitHeight,
          imageUrl: '$_imageBasePath/$id.png',
          placeholderFadeInDuration: const Duration(milliseconds: 500),
          fadeInDuration: const Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
