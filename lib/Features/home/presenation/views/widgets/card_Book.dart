import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageofBook extends StatelessWidget {
  const ImageofBook({
    super.key,
    required this.urlImage,
  });
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: CachedNetworkImage(
            imageUrl: urlImage,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
          )),
    );
  }
}
