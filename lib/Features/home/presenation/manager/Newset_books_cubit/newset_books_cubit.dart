import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/repo_home.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;
  @override
  emit(NewsetBooksLoading);
  Future<void> fetchNewseteBooks() async {
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure) {
      emit(NewsetBooksFailure(errMessage: failure.errMessge));
    }, (books) {
      emit(NewsetBooksSuccess(books: books));
    });
  }
}
