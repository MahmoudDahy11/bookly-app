part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksfailure extends NewestBooksState {
  final String errMessage;

  NewestBooksfailure(this.errMessage);
}

final class NewestBooksSuccess extends NewestBooksState {
  NewestBooksSuccess(this.books);
  List<BookModel> books;
}
