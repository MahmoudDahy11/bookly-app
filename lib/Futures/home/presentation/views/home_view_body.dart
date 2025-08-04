import 'package:bookly_app/Futures/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:bookly_app/Futures/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/Futures/home/presentation/views/widget/future_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomAppBar(),
              const FutureListViewItem(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 32),
                    child: Text(
                      "Best Seller",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlayfairDisplay',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: const BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
