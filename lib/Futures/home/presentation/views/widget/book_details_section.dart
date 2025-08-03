
import 'package:bookly_app/Futures/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookImage(),
        const SizedBox(height: 20),
        const Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          "The Jungle Book",
          style: TextStyle(
            fontFamily: kFontFamily,
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "J.K. Rowling",
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
            Text("4.8", style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(width: 4),
            Text("(2390)", style: TextStyle(color: Colors.grey, fontSize: 16)),
          ],
        ),
      ],
    );
  }
}
