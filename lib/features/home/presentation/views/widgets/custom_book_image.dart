import 'package:bookly_app/core/utils/assets.dart';
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
        AspectRatio(
          aspectRatio: 2.6 / 4,
          child: Container(
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                
               
              ),
            ),
          ),
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
          right: 18,
          child: Image(
            image: Image.asset(AssetsData.playIcon).image,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
