import 'package:bookly_app/Futures/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookdetailsView);
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'assets/images/test3.png',
                height: 130,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 35),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    "Harry Potter and the Goblet of Fire",
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
                  const SizedBox(height: 12),
                  BookRating(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
