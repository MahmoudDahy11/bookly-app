import 'package:bookly_app/Futures/search/presentation/views/widgets/best_seller_list_view_search.dart';
import 'package:bookly_app/Futures/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Search Result",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'PlayfairDisplay',
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(child: BestSellerListViewSearch()),
        ],
      ),
    );
  }
}
