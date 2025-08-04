import 'package:bookly_app/Futures/home/presentation/manger/future_books_cubit/future_book_cubit.dart';
import 'package:bookly_app/Futures/home/presentation/views/widget/card_item.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widget/custom_error_message.dart';
import 'package:bookly_app/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FutureListViewItem extends StatelessWidget {
  const FutureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FutureBookCubit, FutureBookState>(
      builder: (context, state) {
        if (state is FutureBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookdetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CardItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FutureBookFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
