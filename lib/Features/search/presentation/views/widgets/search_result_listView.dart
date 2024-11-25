import 'package:bookly/Features/home/presenation/views/widgets/Newest_Book_Item%20.dart';
import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_progress_indactor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccessState) {
          return ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: NewestBookItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is SearchFailureState) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if (state is SearchLoadedState) {
          return CustomProgressIndactor();
        } else {
          return Center(
              child: Text(
            'Search Books by Name',
            style: Styles.textStyle16
                .copyWith(fontFamily: kGTSectraFine, fontSize: 16),
          ));
        }
      },
    );
  }
}
