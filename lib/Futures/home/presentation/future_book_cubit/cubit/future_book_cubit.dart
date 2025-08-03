import 'package:bloc/bloc.dart';
import 'package:bookly_app/Futures/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'future_book_state.dart';

class FutureBookCubit extends Cubit<FutureBookState> {
  FutureBookCubit() : super(FutureBookInitial());
}
