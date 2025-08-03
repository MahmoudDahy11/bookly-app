part of 'future_book_cubit.dart';

@immutable
sealed class FutureBookState {}

final class FutureBookInitial extends FutureBookState {}

final class FutureBookLoading extends FutureBookState {}

final class FutureBookFailure extends FutureBookState {
  final String errMessage;

  FutureBookFailure(this.errMessage);
}

// ignore: must_be_immutable
final class FutureBookSuccess extends FutureBookState {
  List<BookModel> books;
  FutureBookSuccess(this.books);
}
