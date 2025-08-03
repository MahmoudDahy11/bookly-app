import 'package:bookly_app/Futures/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimlarBooksListView extends StatelessWidget {
  const SimlarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 170,
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            clipBehavior: Clip.antiAlias,
            child: CustomBookImage(
              imageUrl:
                  'http://books.google.com/books/content?id=4MlcEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
            ),
          );
        },
      ),
    );
  }
}
