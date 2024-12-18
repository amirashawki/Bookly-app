import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/repo_home.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RepoHomeImpl implements HomeRepo {
  final ApiServices apiServices;

  RepoHomeImpl(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?q=subject:programming&Filtering=free-ebooks');
      List<BookModel> Books = [];
      for (var item in data['items']) {
        Books.add(BookModel.fromJson(item));
      }
      return right(Books);
    } on Exception catch (e) {
      if (e is DioException) {
        return (left(ServerFailure.fromDioException(e)));
      }
      return (left(ServerFailure(e.toString())));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=subject:computer science&Filtering=free-ebooks&sorting=newest');
      List<BookModel> Books = [];
      for (var item in data['items']) {
        try {
          Books.add(BookModel.fromJson(item));
        } on Exception catch (e) {
          Books.add(BookModel.fromJson(item));
        }
      }
      return right(Books);
    } on Exception catch (e) {
      if (e is DioException) {
        return (left(ServerFailure.fromDioException(e)));
      }
      return (left(ServerFailure(e.toString())));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=subject:computer science&Filtering=free-ebooks&sorting=relevance');
      List<BookModel> Books = [];
      for (var item in data['items']) {
        try {
          Books.add(BookModel.fromJson(item));
        } on Exception catch (e) {
          Books.add(BookModel.fromJson(item));
        }
      }
      return right(Books);
    } on Exception catch (e) {
      if (e is DioException) {
        return (left(ServerFailure.fromDioException(e)));
      }
      return (left(ServerFailure(e.toString())));
    }
  }
}
