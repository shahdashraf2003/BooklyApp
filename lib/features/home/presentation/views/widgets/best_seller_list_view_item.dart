import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.9 / 3,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage(AssetsData.test),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Column(
            children: [
              Text(
                'Harry Potter and the Goblet of Fire',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'GT Sectra Fine',
                  overflow: TextOverflow.clip,
                  color: Colors.white,
                ),
              ),
              Text('J.K. Rowling'),
              Row(
                children: [
                  Text('19.99\$'),
                  Icon(Icons.star, color: Colors.yellow),
                  Text('4.8'),
                  Text('(20003)'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
