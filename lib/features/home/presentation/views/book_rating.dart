import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar, size: 15, color: Colors.yellow),
        const SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Styles.textStyle16
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        Text('(2093)', style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
