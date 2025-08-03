import 'package:bloc/bloc.dart';
import 'package:bookly_app/Futures/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Futures/home/data/models/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'future_book_state.dart';

class FutureBookCubit extends Cubit<FutureBookState> {
  FutureBookCubit(this.homeRepo) : super(FutureBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFutureBooks() async {
    emit(FutureBookLoading());
    var result = await homeRepo.fetchFutureBooks();
    result.fold(
      (failure) {
        emit(FutureBookFailure(failure.errMessage));
      },
      (books) {
        emit(FutureBookSuccess(books));
      },
    );
  }
}
