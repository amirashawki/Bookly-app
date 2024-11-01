import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/repo_home.dart';
import 'package:bookly/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';

class RepoHomeImpl implements RepoHome {
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
   
    throw UnimplementedError();
    
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() {

    throw UnimplementedError();
  }
}