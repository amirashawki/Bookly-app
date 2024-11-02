import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/repo_home.dart';
import 'package:bookly/core/utils/errors/failures.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  @override
  emit(FeaturedBooksLoading);
  Future<void> fetchFeatureBooks() async {
    var result = await homeRepo.fetchFeatureBooks();
    result.fold(( failure) {
      emit(FeaturedBooksFailure(errMessage: failure.errMessge));
    }, ( books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
