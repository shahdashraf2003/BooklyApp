import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child:  const CustomLBookImage(imageUrl: 'https://cdn.pixabay.com/photo/2016/02/07/14/35/smartphone-1184865_1280.png',),
        ),
        const SizedBox(height: 43),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.normal,
            fontFamily: 'kGTSectraFine',
          ),
        ),
        const SizedBox(height: 8),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 17),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 4,
          numberOfRaters: 100,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookActions(),
      ],
    );
  }
}
