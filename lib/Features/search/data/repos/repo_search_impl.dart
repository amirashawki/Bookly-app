import 'package:bookly/Features/search/data/repos/repo_search.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RepoSearchImpl extends RepoSearch {
  @override
  final ApiServices apiServices;

  RepoSearchImpl(this.apiServices);
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String subject}) async {
    try {
  var data = await apiServices.get(
      endPoint:
          'volumes?q=$subject&Filtering=free-ebooks');
  
  List<BookModel> books = [];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return right(books);
} on Exception catch (e) {
      if (e is DioException) {
        return (left(ServerFailure.fromDioException(e)));
      }
      return (left(ServerFailure(e.toString())));
    }
  
  }
}
