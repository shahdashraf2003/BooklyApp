import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomLBookImage extends StatelessWidget {
  const CustomLBookImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.fill,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Center(
                  child: Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                ),
              )),
        ),
        Positioned(
          right: -27,
          bottom: -22,
          child: Image(
              image: Image.asset(AssetsData.oval).image,
              fit: BoxFit.fill,
              color: const Color.fromARGB(255, 255, 255, 255)),
        ),
        Positioned(
          bottom: 30,
          right: 20,
          child: Image(
            image: Image.asset(AssetsData.playIcon).image,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
