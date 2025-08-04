part of 'serch_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchFailure extends SearchState {
  final String errMessage;

  SearchFailure(this.errMessage);
}

final class SearchSuccess extends SearchState {
  final List<BookModel> books;

  SearchSuccess(this.books);
}
