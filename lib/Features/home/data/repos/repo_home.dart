//RepoHome create to    ا تحدد الهدف  م الفيتشر اي الا هيتعمل عندى   مش الهدف هيتعمل ازاى
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';

import 'package:bookly/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
}
