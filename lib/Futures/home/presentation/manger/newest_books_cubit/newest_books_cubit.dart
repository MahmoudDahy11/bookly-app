import 'package:bloc/bloc.dart';
import 'package:bookly_app/Futures/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());
}
