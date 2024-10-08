import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key,  required this.onPressed, required this.book});
  final void Function()? onPressed;
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(130, 48),
              backgroundColor: Colors.white,
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 15,
              ),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              )),
            ),
            onPressed: () {},
            child: Text(
              '19.99€',
              style: Styles.textStyle18.copyWith(
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(130, 48),
                backgroundColor: const Color(0xffEF8262),
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                )),
            onPressed: onPressed,
            child: Text(
              'Free preview',
              style: Styles.textStyle16.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
