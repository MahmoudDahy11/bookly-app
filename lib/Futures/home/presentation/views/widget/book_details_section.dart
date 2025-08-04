import 'package:bookly_app/Futures/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Futures/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            bookModel.volumeInfo.title,
            style: TextStyle(
              fontFamily: kFontFamily,
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          bookModel.volumeInfo.authors[0],
          style: TextStyle(
            color: Color.fromARGB(255, 224, 216, 216),
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.amber, size: 30),
            SizedBox(width: 4),
            Text(
              bookModel.volumeInfo.averageRating.toString(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(width: 4),
            Text(
              "(${bookModel.volumeInfo.ratingsCount})",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
