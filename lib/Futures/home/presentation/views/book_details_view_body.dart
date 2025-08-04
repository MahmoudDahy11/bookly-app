import 'package:bookly_app/Futures/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Futures/home/presentation/views/widget/book_details_section.dart';
import 'package:bookly_app/Futures/home/presentation/views/widget/books_botton_action.dart';
import 'package:bookly_app/Futures/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:bookly_app/Futures/home/presentation/views/widget/simlar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomBookDetailsAppBar(),
              ),
              const SizedBox(height: 30),
              BookDetailsSection(bookModel: bookModel,),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: BooksBottonAction(),
              ),

              const Expanded(child: SizedBox(height: 50)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'You can also like',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: SimlarBooksListView(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
