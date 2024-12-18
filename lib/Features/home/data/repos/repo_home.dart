//RepoHome create to    ا تحدد الهدف  م الفيتشر اي الا هيتعمل عندى   مش الهدف هيتعمل ازاى
import 'package:bookly/core/models/book_model/book_model.dart';

import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
    Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
