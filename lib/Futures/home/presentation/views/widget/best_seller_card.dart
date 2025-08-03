import 'package:bookly_app/Futures/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookdetailsView);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill,
                width: screenWidth * 0.25,
                height: screenWidth * 0.35,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "J.K. Rowling",
                    style: TextStyle(
                      color: Color.fromARGB(255, 224, 216, 216),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 12),
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
