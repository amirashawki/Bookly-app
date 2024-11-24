import 'package:bloc/bloc.dart';
import 'package:bookly/Features/search/data/repos/repo_search_impl.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitialState());

  @override
  emit(SearchCubitLoaded);
  void getSearchResult({required String subject}) async {
    var result = await RepoSearchImpl(ApiServices(Dio()))
        .fetchSearchBooks(subject: subject);
    result.fold((Failure) {
      emit(SearchFailureState(errMessage: Failure.errMessge));
    }, (books) {
      emit(SearchSuccessState(books: books));
    });
  }
}
