import 'package:bookly/Features/home/presenation/views/widgets/ImageBookSection.dart';
import 'package:bookly/Features/home/presenation/views/widgets/Similar_Books_Section.dart';
import 'package:bookly/Features/home/presenation/views/widgets/action_button.dart';
import 'package:bookly/Features/home/presenation/views/widgets/card_Book.dart';
import 'package:bookly/Features/home/presenation/views/widgets/custom_Book_Details_AppBar.dart';
import 'package:bookly/Features/home/presenation/views/widgets/rating_book.dart';
import 'package:bookly/Features/home/presenation/views/widgets/similar_book_listView.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customBookDetailsAppBar(),
              const ImageBookSection(),
              const Expanded(
                child: SizedBox(
                  height: 45,
                ),
              ),
              const SimilarBooksSection(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        )
      ],
    ));
  }
}

