import 'package:bookly_app/Futures/home/presentation/views/widget/best_seller_card.dart';
import 'package:bookly_app/Futures/search/presentation/manger/search_cubit/serch_cubit.dart';
import 'package:bookly_app/core/widget/custom_error_message.dart';
import 'package:bookly_app/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewSearch extends StatelessWidget {
  const BestSellerListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: BestSellerCard(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
