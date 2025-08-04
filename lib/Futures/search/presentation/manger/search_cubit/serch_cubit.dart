import 'package:bloc/bloc.dart';
import 'package:bookly_app/Futures/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Futures/home/data/models/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'serch_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSearchBooks() async {
    emit(SearchLoading());
    var result = await homeRepo.fetchSearchBooks();
    result.fold(
      (failure) {
        emit(SearchFailure(failure.errMessage));
      },
      (books) {
        emit(SearchSuccess(books));
      },
    );
  }
}
