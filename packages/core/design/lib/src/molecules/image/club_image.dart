import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const _imageBasePath =
    'https://ilvbpyniqpybqtgtnuam.supabase.co/storage/v1/object/public/club-logos/image';

class ClubImage extends StatelessWidget {
  const ClubImage({
    super.key,
    required this.clubId,
  });

  final int clubId;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: 20,
      fit: BoxFit.fitWidth,
      imageUrl: '$_imageBasePath/$clubId.png',
      placeholderFadeInDuration: const Duration(milliseconds: 500),
      fadeInDuration: const Duration(milliseconds: 500),
    );
  }
}
