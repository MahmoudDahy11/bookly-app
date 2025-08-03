import 'package:bookly_app/Futures/home/presentation/manger/future_books_cubit/future_book_cubit.dart';
import 'package:bookly_app/Futures/home/presentation/views/widget/card_item.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CardItem(),
                );
              },
            ),
          );
        } else if (state is FutureBookFailure) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showSnakBar(context, message: state.errMessage);
          });
          return const SizedBox.shrink(); 
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
