import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/repo_home.dart';
import 'package:bookly/core/utils/errors/api_services.dart';
import 'package:bookly/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';

class RepoHomeImpl implements RepoHome {
  final ApiServices apiServices;

  RepoHomeImpl(this.apiServices);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=subject:programming&Filtering=free-ebooks&sorting=newest');
      List<BookModel> Books = [];
      for (var item in data['items']) {
        Books.add(item);
      }
      return right(Books);
    } on Exception catch (e) {
      return left();
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() {
    throw UnimplementedError();
  }
}
