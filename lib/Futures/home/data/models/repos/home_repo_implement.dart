import 'package:bookly_app/Futures/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Futures/home/data/models/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService = ApiService();
  final String sorting = 'newest';
  final String categoryFutureBooks = 'programming';
  final String categoryNewestBooks = 'science';
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        url:
            'https://www.googleapis.com/books/v1/volumes?sorting=$sorting&q=$categoryFutureBooks',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFutureBooks() async {
    try {
      var data = await apiService.get(
        url:
            'https://www.googleapis.com/books/v1/volumes?sorting=$sorting&q=$categoryFutureBooks',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
