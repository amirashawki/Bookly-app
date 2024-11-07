import 'package:bookly/Features/home/presenation/manager/Newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/Features/home/presenation/views/widgets/Newest_Book_Item%20.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_progress_indactor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksList extends StatelessWidget {
  const NewsetBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: NewestBookItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomProgressIndactor();
        }
      },
    );
  }
}
