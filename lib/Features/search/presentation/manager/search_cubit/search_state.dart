part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitialState extends SearchState {}

final class SearchLoadedState extends SearchState {}

final class SearchSuccessState extends SearchState {
  final List<BookModel> books;

  SearchSuccessState({required this.books});
}

final class SearchFailureState extends SearchState {
  final String errMessage;

  SearchFailureState({required this.errMessage});
}
