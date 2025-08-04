part of 'similar_cubit.dart';

@immutable
sealed class SimilarState {}

final class SimilarInitial extends SimilarState {}

final class SimilarLoading extends SimilarState {}

final class SimilarFailure extends SimilarState {
  final String errMessage;

  SimilarFailure(this.errMessage);
}

final class SimilarSuccess extends SimilarState {
  final List<BookModel> books;

  SimilarSuccess(this.books);
}
