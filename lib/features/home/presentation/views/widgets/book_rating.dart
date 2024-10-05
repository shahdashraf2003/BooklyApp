import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.numberOfRaters});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int numberOfRaters;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Colors.yellow,
        ),
        const SizedBox(width: 6.3),
        Text(
          rating.toString(),
          style: Styles.textStyle16
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
         Opacity(
            opacity: .5,
            child: Text(
              '(${numberOfRaters.toString()})',
              style: Styles.textStyle14,
            )),
      ],
    );
  }
}
