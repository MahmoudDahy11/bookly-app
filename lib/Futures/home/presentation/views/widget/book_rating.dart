import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});
  final double rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Free",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Expanded(child: SizedBox(width: 16)),
          Icon(Icons.star, color: Colors.amber, size: 25),
          Text(
            rating.toString(),
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text("($count)", style: TextStyle(color: Colors.grey, fontSize: 16)),
        ],
      ),
    );
  }
}
