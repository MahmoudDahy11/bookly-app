import 'package:bloc/bloc.dart';
import 'package:bookly_app/Futures/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Futures/home/data/models/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'similar_state.dart';

class SimilarCubit extends Cubit<SimilarState> {
  SimilarCubit(this.homeRepo) : super(SimilarInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarLoading());
    var result = await homeRepo.fetchSimilarBooks(Category: category);
    result.fold(
      (failure) {
        emit(SimilarFailure(failure.errMessage));
      },
      (books) {
        emit(SimilarSuccess(books));
      },
    );
  }
}
