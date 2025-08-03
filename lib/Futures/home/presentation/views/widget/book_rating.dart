import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: const [
          Text(
            "19.99 €",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(width: 16),
          Icon(Icons.star, color: Colors.amber, size: 25),
          SizedBox(width: 4),
          Text("4.8", style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(width: 4),
          Text("(2390)", style: TextStyle(color: Colors.grey, fontSize: 16)),
        ],
      ),
    );
  }
}
