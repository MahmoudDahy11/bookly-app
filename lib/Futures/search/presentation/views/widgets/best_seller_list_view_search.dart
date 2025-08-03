import 'package:bookly_app/Futures/home/presentation/views/widget/best_seller_card.dart';
import 'package:flutter/material.dart';

class BestSellerListViewSearch extends StatelessWidget {
  const BestSellerListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 32),
          child: BestSellerCard(),
        );
      },
    );
  }
}
