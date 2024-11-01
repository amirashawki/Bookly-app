//RepoHome create to    ا تحدد الهدف  م الفيتشر اي الا هيتعمل عندى   مش الهدف هيتعمل ازاى
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';

import 'package:bookly/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class RepoHome {
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks();
}
