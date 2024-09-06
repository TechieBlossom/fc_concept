import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const _imageBasePath =
    'https://ilvbpyniqpybqtgtnuam.supabase.co/storage/v1/object/public/nation-flags/image';

class NationImage extends StatelessWidget {
  const NationImage({
    super.key,
    required this.nationId,
  });

  final int nationId;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: 20,
      height: 20,
      fit: BoxFit.fitWidth,
      imageUrl: '$_imageBasePath/$nationId.png',
      placeholderFadeInDuration: const Duration(milliseconds: 500),
      fadeInDuration: const Duration(milliseconds: 500),
    );
  }
}
