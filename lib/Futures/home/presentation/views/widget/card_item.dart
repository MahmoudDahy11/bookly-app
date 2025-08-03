import 'package:bookly_app/Futures/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.red,
        ),
        clipBehavior: Clip.antiAlias,
        child: CustomBookImage(
          imageUrl:
              'http://books.google.com/books/content?id=4MlcEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
        ),
      ),
    );
  }
}
